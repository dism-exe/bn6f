from dataclasses import dataclass, replace, field
from typing import Set, Any
import pipe

class SupportsAspects:
    """
    - Requires that the object has a set of aspects named `aspects`
    """
    aspects: Set[Any]

    def supports(self, aspect_type) -> bool:
        return (
            self.aspects
            | pipe.map(lambda aspect: isinstance(aspect, aspect_type))
            | pipe.Pipe(set)
            | pipe.Pipe(lambda s: sum(s) if len(s) != 0 else 0)
            | pipe.Pipe(lambda i: False if i == 0 else True)
        )
    
    def of(self, aspect_type):
        return (
            self.aspects
            | pipe.filter(lambda aspect: isinstance(aspect, aspect_type))
            | pipe.Pipe(next)
        )
    
    def replace_of(self, aspect_type, **kwargs):
        def replace_aspects(**kwargs):
            return (
                self.aspects
                | pipe.map(lambda aspect: replace(aspect, **kwargs) 
                           if isinstance(aspect, aspect_type) else aspect)
                | pipe.Pipe(list)
            )
        return replace(self, aspects=replace_aspects(**kwargs))
    
    def build_aspects(self) -> 'SupportsAspects':
        return self


