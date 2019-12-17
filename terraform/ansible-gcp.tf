provider "google" {
 credentials = "${file("ansible-credentials.json")}"
 project     = "cscie91-final-project"
 region      = "us-east4"
 zone    = "us-east4-a"
}

resource "google_compute_instance" "ansible_server" {
  name         = "ansible-server"
  machine_type = "f1-micro"

  tags = ["webandssh"]
 
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }
  
  metadata_startup_script = "${file("./scripts/ansible-startup.sh")}"
  
  network_interface {
    //default network
    network       = "default"
    access_config {
    }
  }
}


resource "google_compute_firewall" "default" {
  name    = "docker-firewall"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443", "2000-3000"]
  }

  source_tags = ["webandssh"]
}