if [ -f ~/rom/out/target/product/riva/qassa*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/riva/ && ls qassa*.zip)"
      curl bashupload.com -T ~/rom/out/target/product/riva/qassa*.zip
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/riva/ && ls qassa*.zip) Uploaded Successfully!"
fi
