package Aula12_Ex3;

import java.util.List;

public interface IPlugin {
    
    public List<Pessoa> loadFile(String name);
    
    public void saveFile(String name,List<Pessoa> data);
}
