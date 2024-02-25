require 'roda'

class KuberDoober < Roda
  route do |r|
    r.root {
      "Hello Kubernetes World"
    }
  end
end
