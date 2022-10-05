module semaphore_trial1;
semaphore sem=new(6);
initial begin
  $display("@%0d ns In first initial block",$time);
  sem.get(4);
  $display("@%0d ns Block 1:Accessing 4 keys from semaphore",$time);
  #5;
  sem.put(2);
  $display("@%0d ns Block 1:Done using 2 keys",$time);
  #20;
  $display("@%0d ns Block 1:Done using the other 2 keys",$time);
end

initial begin
  $display("@%0d ns In second initial block",$time);
  sem.get(5);
  $display("@%0d ns Block 2:Accessing 5 keys from semaphore",$time);
  #10;
  sem.put(5);
  $display("@%0d ns Block 2:Done using 5 keys",$time);
end

endmodule
