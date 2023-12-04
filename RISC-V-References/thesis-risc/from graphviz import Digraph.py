from graphviz import Digraph

# Create a new directed graph
dot = Digraph(comment='The Block Diagram')

# Add nodes (blocks)
dot.node('A', 'ThingSpeak Cloud')
dot.node('B', 'Ethernet Interface')
dot.node('C', 'MicroBlaze Processor')
dot.node('D', 'AES Encryption/Decryption IP Core')
dot.node('E', 'Memory')
dot.node('F', 'User Interface (Optional)')
dot.node('G', 'Output')

# Add edges (arrows/lines) to connect nodes
dot.edges(['AB', 'BC'])
dot.edge('C', 'D', label='Data for Encryption')
dot.edge('D', 'C', label='Encrypted Data')
dot.edge('C', 'E', label='Memory Access')
dot.edge('C', 'F', label='User Control & Status')
dot.edge('C', 'G', label='Encrypted Data Output')

# Render the diagram to a file (PDF, PNG, etc.)
dot.render('block_diagram', view=True)
