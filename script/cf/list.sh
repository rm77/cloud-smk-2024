aws cloudfront list-distributions --output table --query 'DistributionList.Items[*].[Id,Origins.Items[0].DomainName]'

