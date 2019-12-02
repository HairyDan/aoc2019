let input = [1;12;2;3;1;1;2;3;1;3;4;3;1;5;0;3;2;1;10;19;1;19;5;23;2;23;6;27;1;27;5;31;2;6;31;35;1;5;35;39;2;39;9;43;1;43;5;47;1;10;47;51;1;51;6;55;1;55;10;59;1;59;6;63;2;13;63;67;1;9;67;71;2;6;71;75;1;5;75;79;1;9;79;83;2;6;83;87;1;5;87;91;2;6;91;95;2;95;9;99;1;99;6;103;1;103;13;107;2;13;107;111;2;111;10;115;1;115;6;119;1;6;119;123;2;6;123;127;1;127;5;131;2;131;6;135;1;135;2;139;1;139;9;0;99;2;14;0;0];;
(* let input = [1;9;10;3;2;3;11;0;99;30;40;50] *)
(* let input = [1;0;0;0;99] *)
(* let input = [2;3;0;3;99] *)
(* let input = [2;4;4;5;99;0] *)
(* let input = [1;1;1;4;99;5;6;0;99] *)

(* Printf.printf "get 6th %d" num;; *)


let rec print_list = function 
[] -> ()
| e::l -> print_int e ; print_string "," ; print_list l

let replace l pos a  = List.mapi (fun i x -> if i = pos then a else x) l

let rec looper inputList i =
    let op = List.nth inputList i in
    if op == 99
    then begin
      print_list inputList;
      exit
    end
    else begin
    let var1 = List.nth inputList (i+1) in
    let var2 = List.nth inputList (i+2) in
    let outPos = List.nth inputList (i+3) in
    if op == 1
      then begin
        let outVal = (List.nth inputList var1) + (List.nth inputList var2) in
        let newlist = replace inputList outPos outVal in
        looper newlist (i+4)
      end else begin
        let outVal = (List.nth inputList var1) * (List.nth inputList var2) in
        let newlist = replace inputList outPos outVal in
        looper newlist (i+4)
      end
    end

let main () = 
    looper input 0
    ;;

main()