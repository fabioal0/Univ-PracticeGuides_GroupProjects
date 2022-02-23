package Aula12_Ex2;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class Plugin {

    public static void main(String[] args) throws Exception {
        
        File proxyList = new File("./src/Aula12_Ex2/plugins");
        ArrayList<IPlugin> plgs = new ArrayList<>();

        for (String f : proxyList.list()) {
            try {
                plgs.add(PluginManager.load("Aula12_Ex2.plugins." + f.substring(0, f.lastIndexOf('.'))));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        Iterator<IPlugin> it = plgs.iterator();

        while (it.hasNext()) {
            it.next().fazQualQuerCoisa();
        }
    }

}
