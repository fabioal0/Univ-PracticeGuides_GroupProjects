package Aula6_Ex2;

import java.util.ArrayList;
import java.util.List;

class ListsProcess {

    public static <L> List filter(List<L> k, Func<L> dasd) {
        
        List result = new ArrayList();

        for (int i = 0; i < k.size(); i++) {
            if(dasd.ifunc(k.get(i))){
             result.add(k.get(i));
            }
            
        }
        
        return result;
        
    }
    
}