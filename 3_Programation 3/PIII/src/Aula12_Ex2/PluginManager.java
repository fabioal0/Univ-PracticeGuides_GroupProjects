package Aula12_Ex2;

abstract class PluginManager {

    public static IPlugin load(String name) throws Exception {
        Class<?> c = Class.forName(name);
        return (IPlugin) c.newInstance();
    }
}

