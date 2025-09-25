import matplotlib.pyplot as plt
import tkinter as tk
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg

def visualize_lexons(text_segments, labels, padding=0.05, line_height=0.15, font_size=14, label_font_size=10):
    # Create a matplotlib figure with dynamic height based on content
    fig_height = len(text_segments) * 0.25  # Dynamically set figure height based on number of segments
    fig_width = 20  # Set a large enough width to accommodate long lines
    fig, ax = plt.subplots(figsize=(fig_width, fig_height))  # Large enough figure with dynamic height and fixed width

    # Get the figure dimensions in pixels for conversion
    fig_width_in_pixels = fig.get_figwidth() * fig.dpi

    # Define the starting position for the text in axes coordinates
    x_pos = 0
    y_pos = 1

    for segment, label in zip(text_segments, labels):
        # Handle newline characters: move to the next line
        if segment == '\n':
            x_pos = 0  # Reset x_pos to the start of the new line
            y_pos -= line_height  # Move y_pos down to the next line
            continue

        # Render the text with bounding box
        text = ax.text(x_pos, y_pos, segment, fontsize=font_size, va='center', ha='left', bbox=dict(facecolor='white', edgecolor='red'))

        # Get the bounding box of the rendered text in pixels
        renderer = fig.canvas.get_renderer()
        bbox = text.get_window_extent(renderer=renderer)

        # Convert the bounding box width from pixels to axes coordinates
        bbox_width_in_axes = bbox.width / fig_width_in_pixels

        # Draw the label below the text, centered under the text box
        ax.text(x_pos + bbox_width_in_axes / 2, y_pos - 0.3 * line_height, label, fontsize=label_font_size, va='center', ha='center', color='red')

        # Update the x position based on the bounding box width (in axes coordinates) and padding
        x_pos += bbox_width_in_axes + padding

    ax.axis('off')  # Turn off the axis
    return fig

def create_scrollable_canvas(root, fig):
    # Create a canvas widget inside the root window
    canvas = tk.Canvas(root)
    canvas.pack(side=tk.LEFT, fill=tk.BOTH, expand=1)

    # Add scrollbars to the canvas
    v_scrollbar = tk.Scrollbar(root, orient=tk.VERTICAL, command=canvas.yview)
    h_scrollbar = tk.Scrollbar(root, orient=tk.HORIZONTAL, command=canvas.xview)

    v_scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
    h_scrollbar.pack(side=tk.BOTTOM, fill=tk.X)

    # Create a frame within the canvas to hold the matplotlib figure
    frame = tk.Frame(canvas)
    frame.bind("<Configure>", lambda e: canvas.configure(scrollregion=canvas.bbox("all")))

    # Attach the figure to the canvas via the frame
    canvas.create_window((0, 0), window=frame, anchor="nw")
    canvas.configure(yscrollcommand=v_scrollbar.set, xscrollcommand=h_scrollbar.set)

    # Embed the matplotlib figure in the tkinter frame
    fig_canvas = FigureCanvasTkAgg(fig, master=frame)
    fig_canvas.draw()
    fig_canvas.get_tk_widget().pack()

# Function to parse input from file
def parse_input():
    text_segments = []
    labels = []
    with open('/tmp/lexons.tmp', 'r') as fr:
        lines = fr.readlines()
    for line in lines:
        if line == '\n':
            text_segments.append('\n')
            labels.append('')
        else:
            text = line[line.index(',')+1:].strip()  # Remove newline from the text
            lexon = line[line.index('.')+1:line.index(',')]
            text_segments.append(text)
            labels.append(lexon)

    return text_segments, labels

# Main function to create the scrollable visualization
def main():
    # Parse the input
    text_segments, labels = parse_input()

    # Create a root window for tkinter
    root = tk.Tk()
    root.state("zoomed")  # Start the window maximized for more space
    root.title("Scrollable Lexon Visualization")

    # Visualize the lexons in a scrollable canvas
    fig = visualize_lexons(text_segments, labels, font_size=16, label_font_size=12)
    create_scrollable_canvas(root, fig)

    # Start the tkinter main loop
    root.mainloop()

# Run the main function
if __name__ == '__main__':
    main()