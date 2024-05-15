if [ -f ~/rom/out/target/product/sagit/RR*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/sagit/ && ls RR*.zip)"
      rclone copy ~/rom/out/target/product/sagit/RR*.zip sagit:rr -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/sagit/ && ls RR*.zip) Uploaded Successfully!"
fi
