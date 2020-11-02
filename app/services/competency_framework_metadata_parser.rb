class CompetencyFrameworkMetadataParser
  attr_reader :framework_metadata

  def initialize(framework_metadata:)
    @framework_metadata = framework_metadata
  end

  def competency_framework_metadata
    @competency_framework_metadata ||= CompetencyFrameworkMetadata.new(
      id: framework_metadata["@id"],
      name: framework_metadata["name"],
      description: framework_metadata["description"],
      attribution_name: framework_metadata["attributionName"],
      attribution_logo_url: framework_metadata["attributionLogoUrl"],
    )
  end
end
