import unittest
import sys
import os


def parent_dir(filepath, num_parents_up):
    out = os.path.dirname(filepath)
    for i in range(0, num_parents_up):
        out = os.path.dirname(out)
    return out


sys.path.insert(0, parent_dir(__file__, 1))
import tokenizer as uut


class TestFunctions(unittest.TestCase):
    def setUp(self):
        pass

    def tearDown(self):
        pass

    def test_filter_label_and_check_if_code(self):
        test_data = [
            '''
someLabel:
    TST R0, R1
            '''
        ]

        print(uut.filter_label_and_check_if_code(test_data, 0))


if __name__ == '__main__':
    unittest.main()
