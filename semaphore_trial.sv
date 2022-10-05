module semaphore_trial;
semaphore sem=new(6);
initial begin
  $display("@%0d ns In first initial block",$time);
  sem.get(4);
  $display("@%0d ns Block 1:Accessing 4 keys from semaphore",$time);
  #5;
  sem.put(4);
  $display("@%0d ns Block 1:Done using 4 keys",$time);
end

initial begin
  $display("@%0d ns In second initial block",$time);
  sem.get(2);
  $display("@%0d ns Block 2:Accessing 2 keys from semaphore",$time);
  #10;
  sem.put(2);
  $display("@%0d ns Block 2:Done using 2 keys",$time);
end

endmodule
