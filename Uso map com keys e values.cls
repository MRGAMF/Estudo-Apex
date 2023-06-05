public class Category {
    String name;
    List<Post> posts;
    public category(String name, List<Post> posts){
        this.name = name;
        this.posts = posts;
    }
    
    public category() {
        throw new UnsupportedOperationException('Este construtor não pode ser usado. Forneça os parâmetros necessários.');
    }
}

public class Post {
    Map<Integer,String> posts = new Map<Integer,String>();
}
Post postApex = new Post();
postApex.posts.put(1,'Demystifying Apex Collections');
postApex.posts.put(2,'Datatypes and variables in Apex');

Post postLightning = new Post();
postLightning.posts.put(1,'Events in Aura framework');
postLightning.posts.put(2,'Developing reusable components');

List<Post> listPostApex = new List<Post>{postApex};
List<Post> listPostLightning = new List<Post>{postLightning};
    
Category category = new Category('Apex',listPostApex);
Category category1 = new Category('Lightning',listPostLightning);

List<Category> categorias = new List<Category>();

categorias.add(category);
categorias.add(category1);

for(Category c: categorias){
    System.debug('Categoria ' + c.name);
    for(Post post : c.posts){
           for(Integer chavePost : post.posts.keySet()){
            System.debug('Post numero #' + chavePost + ' publicação: ' + post.posts.get(chavePost));
            
        }

    }
}
