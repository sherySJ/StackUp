import Header from "../components/Header";

const AuthorPage = () => {
	return (
		<div>
			<Header />
			<div className="container">
				<div className="inner-container">
					<h1 className="page-title">About the Author: Shery</h1>

                    <div className="blog-subcontents">

					</div>
					<img src="./img/header.jpg" className="hero-image" alt="" />
                    <div className="blog-content">
                        <p className="blog-text">Shery is a beginner level Front End developer that is learning and yearning to learn about Front End Aesthetics Having first interaction with basic HTML & CSS back in 2010 when he discovered the ability to manipulate and change markup of  threads of a multiplayer forum of GTA San Andreas and has since then developed this curiosity to tinker with web pages and learn to make his own websites and write interesting things about his blogsite.  </p>
					</div>
				</div>
			</div>
		</div>
	);
};

export default AuthorPage;
