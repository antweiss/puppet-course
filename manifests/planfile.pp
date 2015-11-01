define planfile ($user = $title, $content) {
      file {'.plan':
        path    => "/home/${user}/.plan",
        ensure  => file,
        content => $content,
        mode    => 0644,
        owner   => $user,
        require => User[$user],
      }
    }

planfile {'nick':
      content => "Working on new Learning Puppet chapters. Tomorrow: upgrading the LP virtual machine.",
    }

    planfile {'chris':
      content => "Resurrecting a very dead laptop.",
    }

