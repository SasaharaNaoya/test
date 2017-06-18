public class EulerProblem5 {
    public static void main(String[] args) {
    	int ans = 1;
		int count = 1;
		while(true){
			boolean canDiv = true;
  			for(int num = 1; num<=20; num++){
 				while ((count % num) != 0){
 					canDiv = false;
 					break;
 				}
			}
	 		if(canDiv == true){
		 		ans = count;
		 		break;
		 	}
		 	count += 1;
		 	System.out.println(num);
		 }
		 System.out.println(ans);
	}
}
    
