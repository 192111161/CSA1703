def bfs_algorithm( visited, graph, node ): 
  visited.append( node )
  q.append( node )
  while q:
    v = q.pop( 0 ) 
    print ( v, end = " " ) 
    for u in graph[v]:
      if u not in visited:
        visited.append( u )
        q.append( u )
print( "Following is the result of the Breadth-First Search, starting from vertex 1:" )
g = {
  '1' : ( '2', '3' ),
  '2' : ( '4', '5' ),
  '3' : ( '6' ),
  '4' : ( ),
  '5' : ( '6' ),
  '6' : ( )
}
visited = [ ]
q = [ ]
bfs_algorithm( visited, g, '1' ) 
