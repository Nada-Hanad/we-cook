<?php

class Main
{
    public function Head($title, $mainColor)
    {
?>

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="pragma" content="no cache" />
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            <link rel="stylesheet" href="<?php echo ROOT ?>/assets/css/style.css">
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <style>
                :root {
                    --main: <?php echo $mainColor ?>;
                }
            </style>
            <title> <?php echo $title ?> </title>
        </head>

    <?php

    }
    public function NavBar()
    {
    ?>
        <nav>
            <a class="logo" href="index.php">
                We<span>Cook</span>

            </a>
            <ul class="nav-ul">
                <li>
                    <a href="<?php echo ROOT ?>/home">Acceuil</a>
                </li>
                <li>
                    <a href="<?php echo ROOT ?>/news" rel="noopener noreferrer">News</a>
                </li>
                <li>
                    <a href="<?php echo ROOT ?>/ideeRecette">Idée de recettes</a>
                </li>
                <li>
                    <a href="<?php echo ROOT ?>/nutrition">Nutrition</a>
                </li>
                <li class="menu">
                    <div class="header">
                        <span>
                            Recettes
                        </span>
                        <img src="<?php echo ROOT ?>/assets/svg/arrow-down.svg" alt="arrow-down">

                    </div>

                    <div class="menu-content">
                        <ul>
                            <li>
                                <a href="<?php echo ROOT ?>/category/healthy">
                                    Healthy
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo ROOT ?>/category/fêtes">
                                    Fêtes
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo ROOT ?>/category/saison">
                                    Saison
                                </a>

                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="<?php echo ROOT ?>/contact">Contact</a>
                </li>
            </ul>
            <div class="socials">
                <img class="svgg" src="<?php echo ROOT ?>/assets/svg/facebook.svg" alt="Facebook Icon">
                <img src="<?php echo ROOT ?>/assets/svg/instagram.svg" alt="Instagram Icon">
                <img src="<?php echo ROOT ?>/assets/svg/twitter.svg" alt="Twitter Icon">
            </div>
            <?php
            if (isset($_SESSION['user'])) {
                echo '
                 <a href="' . ROOT . '/userDashboard">
                <div class="secondary-button">
                    PROFILE
                </div>
                </a>
                <a href="' . ROOT . '/authentication/logout">
                <i class="fa-solid fa-arrow-right-from-bracket logout-icon"></i>
                </a>
               
                ';
            } else {
                echo ' <a href="' . ROOT . '/authentication">
                <div class="login-button">
                    LOGIN
                </div>
            </a>';
            }
            ?>

            <div class="menu-icon">
                <div class="bar"></div>
                <div class="bar"></div>
                <div class="bar"></div>
            </div>

        </nav>
        <script>
            $("nav .menu-icon").click(function() {
                $("nav ul").toggleClass("active");
            });
        </script>

    <?php
    }
    public function Footer()
    {
    ?>
        <footer>
            <a class="logo" href="index.php">
                We<span>Cook</span>

            </a>
            <div class="footer-content">

                <div class="content">
                    <ul class="nav-ul">
                        <li>
                            <a href="<?php echo ROOT ?>/home">Acceuil</a>
                        </li>
                        <li>
                            <a href="<?php echo ROOT ?>/news" rel="noopener noreferrer">News</a>
                        </li>
                        <li>
                            <a href="<?php echo ROOT ?>/ideeRecette">Idée de recettes</a>
                        </li>
                        <li>
                            <a href="<?php echo ROOT ?>/nutrition">Nutrition</a>
                        </li>
                        <li class="menu">
                            <div class="header">
                                <span>
                                    Recettes
                                </span>
                                <img src="<?php echo ROOT ?>/assets/svg/arrow-down.svg" alt="arrow-down">

                            </div>

                            <div class="menu-content">
                                <ul>
                                    <li>
                                        <a href="<?php echo ROOT ?>/category/healthy">
                                            Healthy
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?php echo ROOT ?>/category/fêtes">
                                            Fêtes
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?php echo ROOT ?>/category/saison">
                                            Saison
                                        </a>

                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="<?php echo ROOT ?>/contact">Contact</a>
                        </li>
                    </ul>
                </div>
                <div class="socials">

                    <img src="<?php echo ROOT ?>/assets/svg/facebook.svg" alt="Facebook Icon">
                    <img src="<?php echo ROOT ?>/assets/svg/instagram.svg" alt="Instagram Icon">
                    <img src="<?php echo ROOT ?>/assets/svg/twitter.svg" alt="Twitter Icon">
                </div>
                <p class="copy-right"> &copy; <span>2023</span> WeCook</p>
            </div>
        </footer>
    <?php
    }
    public function SwiperCard($titre, $description, $image, $id)
    {
    ?>
        <div class="swiper-card">
            <img src="https://images.unsplash.com/photo-1466637574441-749b8f19452f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVjaXBlfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800&q=60" alt="recipe image">
            <div class="overlay"></div>
            <div class="card-content">
                <h3>Recipe title</h3>
                <p>Recipe description : Lorem ipsum dolor sit amet, consectetur adipisicing elit. A nihil doloremque pariatur. Aperiam sit facilis quisquam deleniti fugiat nemo explicabo?</p>
            </div>
        </div>



    <?php

    }
    public function RecipeCard($titre, $description, $image, $id)
    {
    ?>
        <div class="recipe-card">
            <img src=<?php echo $image ?> alt="recipe image">
            <div class="recipe-card-content">
                <h3>
                    <?php
                    echo $titre
                    ?>
                </h3>
                <p> <?php
                    echo $description
                    ?></p>
            </div>
            <a href=<?php echo ROOT . '/recipe/' . $id ?> target="_blank" rel="noopener noreferrer">
                <input class="primary-button" type="button" value="Lire la suite">
            </a>
        </div>
    <?php

    }
    public function NewsCard($titre, $description, $image, $id)
    {
    ?>
        <div class="recipe-card">
            <img src="<?php echo $image ?>" alt="recipe image">
            <div class="recipe-card-content">
                <h3>
                    <?php
                    echo $titre
                    ?>
                </h3>
                <p> <?php
                    echo $description
                    ?></p>
            </div>
            <a href=<?php echo ROOT . '/news/show/' . $id ?> target="_blank" rel="noopener noreferrer">
                <input class="primary-button" type="button" value="Lire la suite">
            </a>
        </div>
    <?php

    }
    public function CategoryDisplay($category, $id, $recipes)
    {
    ?>
        <?php
        //request

        ?>
        <div class="category-container">
            <div class="category-header">
                <h2><?php echo $category ?></h2>
                <a href="http://localhost/Projet_Final/public/category/<?php echo $category ?>" target="_blank" rel="noopener noreferrer">
                    <p>Voir plus >></p>
                </a>
            </div>
            <div class="slider slider-container">
                <?php
                foreach ($recipes as $recipe) {
                    if ($recipe->etat == "published") {
                ?>
                        <div class="slide">
                            <?php

                            $this->RecipeCard($recipe->titre, $recipe->description, $recipe->image, $recipe->id);
                            ?>
                        </div>

                <?php
                    }
                }
                ?>

                <div class="control-prev-btn">
                    <i class="fas fa-arrow-left"></i>
                </div>
                <div class="control-next-btn">
                    <i class="fas fa-arrow-right"></i>
                </div>
            </div>


            <div class="overlay"></div>
        </div>


    <?php

    }
    public function Diaporama($items)
    {
    ?>
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="<?php echo $items[0]->url ?>">

                        <div class="swiper-card">
                            <img src=<?php echo $items[0]->article->image ?> alt="recipe image">
                            <div class="overlayy"></div>
                            <div class="card-content">
                                <h3><?php echo $items[0]->article->titre ?></h3>
                                <p><?php echo $items[0]->article->description ?></p>
                            </div>
                        </div>
                    </a>
                </div>
                <?php
                for ($i = 1; $i < count($items); $i++) {
                ?>
                    <div class="carousel-item">
                        <a href="<?php echo $items[$i]->url ?>">
                            <div class="swiper-card">
                                <img src=<?php echo $items[$i]->article->image ?> alt="recipe image">
                                <div class="overlayy"></div>
                                <div class="card-content">
                                    <h3><?php echo $items[$i]->article->titre ?></h3>
                                    <p><?php echo $items[$i]->article->description ?></p>
                                </div>
                            </div>
                        </a>
                    </div>
                <?php } ?>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <script>
            const carousel = new bootstrap.Carousel('#carouselExampleSlidesOnly', {
                interval: 5000,
                wrap: true,
            })
        </script>


<?php
    }
}
