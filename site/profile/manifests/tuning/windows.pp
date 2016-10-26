class profile::tuning::windows {
    registry::value { 'KeepAliveInterval':
      key    => 'HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters',
      value  => 'KeepAliveInterval',
      data   => '1',
    }

  # Add more registry resources as directed
  
    registry::value { 'KeepAliveInterval':
      key    => 'HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters',
      value  => 'TcpMaxDataRetransmissions',
      data   => '5',
    }

    registry::value { 'KeepAliveInterval':
      key    => 'HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters',
      value  => 'TcpTimedWaitDelay',
      data   => '0x0000001e',
    }
}
