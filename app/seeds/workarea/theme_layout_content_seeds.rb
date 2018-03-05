module Workarea
  class ThemeLayoutContentSeeds
    def perform
      puts "Adding theme layout content..."

      content = Content.for("Layout")

      content.blocks.create!(
        area: "footer_column_1",
        type: "taxonomy",
        data: {
          header: "Customer Service",
          start: Navigation::Taxon
                  .where(name: "Customer Service")
                  .first
                  .id
        }
      )

      content.blocks.create!(
        area: "footer_column_2",
        type: "html",
        data: {
          html: "<h3 class='page-footer__heading'>Contact</h3> <p>Weblinc</br>22 south 3rd street </br>Philadelphia </br> PA </br> 19106</p><p>Phone: <a class='link link--secondary' href='tel:215-925-1800'>215-925-1800</a></p>",
        }
      )

      content.blocks.create!(
        area: "footer_column_3",
        type: "taxonomy",
        data: {
          header: "News",
          start: Navigation::Taxon
                  .where(name: "Customer Service")
                  .first
                  .id
        }
      )
    end
  end
end
