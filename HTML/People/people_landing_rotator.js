let data = [];
data.push({
    headline: "People",
    caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    slide_link: "https://editmedschool.ucsd.edu/som/model-site/V3/Pages/Components.aspx",
    slide_link_text: "Learn More"
});
data.push({
    headline: "More People",
    caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    slide_link: "https://editmedschool.ucsd.edu/som/model-site/V3/Pages/Components.aspx",
    slide_link_text: "Learn More"
});
data.push({
    headline: "Kids",
    caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    slide_link: "https://editmedschool.ucsd.edu/som/model-site/V3/Pages/Components.aspx",
    slide_link_text: "Learn More"
});
data.push({
    headline: "More Kids",
    caption: "The Department has several San Diego region satellites: Encinitas and 4S Ranch, both in North County and the South Bay in southern San Diego County near the border.  The Encinitas and 4S Ranch Facilities are each equipped with 1 linac, whereas the South Bay Facility has 2 linacs.  All satellites offer state-of-the-art treatments including IMRT, IGRT, Stereotactic Radiosurgery and Stereotactic Body Radiotherapy.",
    slide_link: "https://editmedschool.ucsd.edu/som/model-site/V3/Pages/Components.aspx",
    slide_link_text: "Learn More"
});
data.push({
    headline: "People",
    caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    slide_link: "https://editmedschool.ucsd.edu/som/model-site/V3/Pages/Components.aspx",
    slide_link_text: "Learn More"
});
data.push({
    headline: "More People",
    caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    slide_link: "https://editmedschool.ucsd.edu/som/model-site/V3/Pages/Components.aspx",
    slide_link_text: "Learn More"
});
data.push({
    headline: "Kids",
    caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    slide_link: "https://editmedschool.ucsd.edu/som/model-site/V3/Pages/Components.aspx",
    slide_link_text: "Learn More"
});
data.push({
    headline: "More Kids",
    caption: "The Department has several San Diego region satellites: Encinitas and 4S Ranch, both in North County and the South Bay in southern San Diego County near the border.  The Encinitas and 4S Ranch Facilities are each equipped with 1 linac, whereas the South Bay Facility has 2 linacs.  All satellites offer state-of-the-art treatments including IMRT, IGRT, Stereotactic Radiosurgery and Stereotactic Body Radiotherapy.",
    slide_link: "https://editmedschool.ucsd.edu/som/model-site/V3/Pages/Components.aspx",
    slide_link_text: "Learn More"
});

let index = 0;

let updateUI = () => {
    for (let item of data) {
        let docHandler = document.getElementById('slick-slide1' + index);
        docHandler.getElementsByClassName('headline')[0].innerHTML = data[index].headline;
        docHandler.getElementsByClassName('caption')[0].innerHTML = data[index].caption;

        let rotLinkTag = docHandler.getElementsByClassName('rot_link_a_tag');
        rotLinkTag[0].href = data[index].slide_link;
        rotLinkTag[0].innerHTML = data[index].slide_link_text;
        index += 1;
    }
};

$(document).ready(
    function () {
        $('.rotator-web-part').slick({
            lazyLoad: 'ondemand',
            mobileFirst: true,
            infinite: true,
            dots: true,
            arrows: true
        });
    }
);
$(window).on( "load", function() {
    $(".rotator-web-part").css("display", "block");
    updateUI();
});
