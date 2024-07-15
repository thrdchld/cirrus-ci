if [ -f ~/rom/out/target/product/X01BD/crDroid*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/X01BD/ && ls crDroid*.zip)"
      curl bashupload.com -T ~/rom/out/target/product/X01BD/crDroid*.zip
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/X01BD/ && ls crDroid*.zip) Uploaded Successfully!"
fi
