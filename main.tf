terraform {
  required_version = ">= 1.3"
}

resource "null_resource" "create_vm" {

  provisioner "local-exec" {
    command = <<EOT
VBoxManage createvm --name "tf-vbox-vm" --register
VBoxManage modifyvm "tf-vbox-vm" --memory 2048 --cpus 2 --nic1 nat
VBoxManage createmedium disk --filename "tf-vbox-vm.vdi" --size 20000
VBoxManage storagectl "tf-vbox-vm" --name "SATA" --add sata --controller IntelAhci
VBoxManage storageattach "tf-vbox-vm" --storagectl "SATA" --port 0 --device 0 --type hdd --medium "tf-vbox-vm.vdi"
EOT
  }
}