class SymbolTable:
    def __init__(self):
        self.stack = []

    def push_scope(self, scope):
        self.stack.append(scope)

    def pop_scope(self):
        return self.stack.pop()

    def push_symbol(self, symbol):
        cur_scope = self.stack[len(self.stack) - 1]
        cur_scope.symbols.append(symbol)

    def lookup_symbol(self, name):
        cur_scope = self.stack[len(self.stack) - 1]
        while cur_scope:
            for symbol in cur_scope.symbols:
                if symbol.name == name:
                    return symbol.value
            cur_scope = cur_scope.parent_scope
        raise Exception(
            'SymbolTable Error:symbol does not exist in symbolTable.')


class Symbol:
    def __init__(self, name, value):
        self.name = name
        self.value = value
        self.scope = None


class Scope:
    def __init__(self, name, parent_scope=None):
        self.name = name
        self.parent_scope = parent_scope
        self.symbols = []


if __name__ == '__main__':
    # THIS IS JUST FOR TEST
    symbol_table = SymbolTable()

    # root scope
    root = Scope('root')
    symbol_table.push_scope(root)

    root_symbol = Symbol('root_var', 11)
    root_symbol2 = Symbol('shared_var', 22)

    symbol_table.push_symbol(root_symbol)
    symbol_table.push_symbol(root_symbol2)

    print('lookup root_var', symbol_table.lookup_symbol('root_var'))

    # another scope
    scope1 = Scope('scope1', root)
    symbol_table.push_scope(scope1)

    scope1_symbol = Symbol('shared_var', 33)
    symbol_table.push_symbol(scope1_symbol)
    print('lookup shared_var', symbol_table.lookup_symbol('shared_var'))

    # another scope
    scope2 = Scope('scope2', scope1)

    symbol_table.push_scope(scope2)

    scope2_symbol = Symbol('scope2_var', 44)
    symbol_table.push_symbol(scope2_symbol)
    print('lookup scope2_var', symbol_table.lookup_symbol('scope2_var'))
    print('lookup shared_var', symbol_table.lookup_symbol('shared_var'))
