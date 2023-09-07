import { LightningElement } from 'lwc';

export default class P2cNonPrimitivesParent extends LightningElement {
    carousels = [
        {
            src: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQsAAAC9CAMAAACTb6i8AAAAq1BMVEX///8hISAAAACfxT+bm5sLCwkbGxoICAaVlZWhoaFEREPGxsYWFhVpaWnh4eFBQUC7u7srKyrp6em0tLT4+PgfHiAdGx+jykCAgIDY2Ng6Ojnd3d3x8fEVFROGhoYTCh5MTEuOjo7Pz89cXFurq6p0dHMxMTCTtTxCTScbGB9SYiuLqzqBnjcwNiMqLSKavz4WEB5VVVVFUShjeC86QyVabS10jjOGpThgdC6jOZMQAAAE1ElEQVR4nO2cW5eiOBRGJUoQxQuKUiKId8uqslqre3r6//+yQSFXtFc9uQby7SdXPLjINoQkJ9BoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP9DRuOcoVy43Sx7SkFjPsyZPfXknkyX5ESiaBQRj3pkGUthrSJs9fQTfCJdYl2hHV4S+N6tyO5IYa6Tl7Wff4bPo+yinZdYFhmLMENdLGnhwtuIMENd+MwFHYgwQ10MuIulCDPUxYvN+ouWCDPUxcjJGwb1AxFmqIvGmtjUonYij6tMddEYvfhJtJCHWua6yAi0MJNd6MCFAC4ERrgYwgVnl8BFQd+x4CInjmgNXcSz4ba1WrRddzzXBwcPGVqeVTcXs9XAIcSxM5zsA126o28ctNgTNiVVXLhR50rkSsFVcbHeXCcQMtQhm/5fj+m3I+Ug2UWL0CvyNLUiLoId8awyHtk+PGTkdkr2ZBf5pN2unIs4cu6YuKL8r9IB4w0hVA+uhYsoeaAik1FuGcF4Y99tRnVwsSBSfbzETjzpLyd6D7qydBHUr42LEVdBCVn2douX3p7wlpL0lOB4QCwVSvytXRcXW1a7xN+ytZf5jleZyOsxsa+2iexmc3GDdXk+UlEXF481cXl81eWrt3JS9JKoIga3QcideWpFXbBcBlFHE0UFleoMxQVCbbJ050po9V0E7Ap50b640FJ5xDtVsm+JTrU2LmLWLLraF8Wpe6Lz7IpORB5b18hFsROA6APuMdFdrHgfonqrjYtGt0CfmZZdsIyxnDy//UJtXDyi7GJfJMOWWmT9XSwSzUVQjC8dfVxeexfs/lJ2QdZaaO1dsFR5+Rop9bI1dxHwCZvkYmCii77rs9un2S7i7YU4YtZurovbipUyFzXURTDslVesTHQRdHfevaU781z0F5Qoq57T88RQFy1iyyIm5/Tr43VqpIudsog5TT9/HsLQTBdtWcUxff1ohs2mmS5mkorj+e09zEyY6uLC7x6T9OtwE2GqizlvFlPrg5nIXPwy0AVfuZt8HoSKZniamOeCP+uRvksqzHThs27zH1lFs/lpnouAN4uDouKHZZ4Llh+ZvqrN4nC2jHWhXyLvqbkuzj8VF+Hvcruo/Xrng3YRfk11F3wdXM821s7F5KTcUd+LZiFtRmEuSpUpKll9F/yemn7II61i1Knk2Ys0O420X+jk5fKzqBV1wTYSTD5/cBnhG2sWliNS6heWT1Vr45KStaq6WLAx+PFUjMHD8C1lKuQsWZvn2eXH81v8eW1pB09FXXSludnvzEMY/nvirSJD5N/F5N7x3VlwZe7ueWEiZeor6kLabTNJT29//vxKp8KEcj10xN5vmziWb9lSJsVZSJFVdbGW1nImx+NRMmHRffAgUkd5LLeyLsQVX64gmX87Usm+V9ZFdicobe7OT9vS3+eyvbv7uaSiwi4as86dOiZkV36ipr+5E0lJpLafKrtoNIYXQhLRNWZ9o72b343s9rLvqAj1HDIo7aBvFxvi5HpX6H05/e1u4Nu3s/X2l8UwfhgZD1fLvZWH0qjn3nF2751JFXuPUhCPrjzWoIT2+/1vhQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGrPf39BWunlw7voAAAAAElFTkSuQmCC",
            header: "First Card",
            description: "First card description.",
            alternativeText: "First card accessible description.",
            href: "javascript:void(0);"
        },
        {
            src: "https://informationage-production.s3.amazonaws.com/uploads/2022/10/role-that-data-will-play-in-our-future.jpg",
            header: "Second Card",
            description: "Second card description.",
            alternativeText: "Second card accessible description.",
            href: "javascript:void(0);"
        },
        {
            src: "https://www.spec-india.com/wp-content/uploads/2020/08/role-of-salesforce-developer.png",
            header: "Third Card",
            description: "Third card description.",
            alternativeText: "Third card accessible description.",
            href: "javascript:void(0);"
        }
    ];
}