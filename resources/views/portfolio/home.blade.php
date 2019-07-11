@extends('portfolio.layout.app')

@section('title', 'Rizky Sam Pratama - Resume')

@push('js')
<script src="{{ asset('js/modernizr.custom.js')}}"></script>
@endpush

@section('content')
    <div id="bl-main" class="bl-main">
        <!-- Top Left Section Starts -->
        <section class="topleft">
            <div class="bl-box row valign-wrapper">
                <div class="row valign-wrapper">
                    <div class="title-heading">
                        <div class="selector uppercase" id="selector">
                            <h3 class="ah-headline p-none m-none">
                                <span class="font-weight-300">Hi, I'm  {{$profiles->firstname}} ! I'm</span>
                                <span class="ah-words-wrapper">
                                    <b class="is-visible">a web developer</b>
                                    <b>a programmer</b>
                                </span>
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Top Left Section Ends -->
        <!-- About Section Starts -->
        <section>
            <!-- About Title Starts -->
            <div class="bl-box valign-wrapper">
                <div class="page-title center-align">
                    <span class="title-bg">Resume</span>
                    <h2 class="center-align">
                        <span data-hover="About">About </span>
                        <span data-hover="Me">Me</span>
                    </h2>
                </div>
            </div>
            <!-- About Title Ends -->
            <!-- About Expanded Starts -->
            <div class="bl-content">
                <!-- Main Heading Starts -->
                <div class="container page-title center-align">
                    <h2 class="center-align">
                        <span data-hover="About">About </span>
                        <span data-hover="Me">Me</span>
                    </h2>
                    <span class="title-bg">Resume</span>
                </div>
                <!-- Main Heading Ends -->
                <div class="container infos">
                    <!-- Divider Starts -->
                    <div class="divider center-align">
                        <span class="outer-line"></span>
                        <span class="fa fa-vcard" aria-hidden="true"></span>
                        <span class="outer-line"></span>
                    </div>
                    <!-- Divider Ends -->
                    <!-- Personal Informations Starts -->
                    <div class="row">
                        <!-- Picture Starts -->
                        <div class="col s12 m5 l4 xl3 profile-picture">
                            <img src="{{$profiles->photo}}" class="responsive-img my-picture" alt="My Photo">
                        </div>
                        <!-- Picture Ends -->
                        <div class="col s12 m7 l8 xl9 personal-info">
                            <h6 class="uppercase"><i class="fa fa-user"></i> Personal Informations</h6>
                            <div class="col m12 l7 xl7 p-none">
                                <p class="second-font">{{ $profiles->description }}</p>
                            </div>
                            <div class="col s12 m12 l6 p-none">
                                <ul class="second-font list-1">
                                    <li><span class="font-weight-600">First Name: </span>{{$profiles->firstname}}</li>
                                    <li><span class="font-weight-600">Last Name: </span>{{$profiles->lastname}}</li>
                                    <li><span class="font-weight-600">Date of birth: </span>{{($profiles->date_of_birth)}}</li>
                                    <li><span class="font-weight-600">Nationality: </span>{{$profiles->nationality}}</li>
                                    <li><span class="font-weight-600">Freelance: </span>{{$profiles->freelance}}</li>
                                </ul>
                            </div>
                            <div class="col s12 m12 l6 p-none">
                                <ul class="second-font list-2">
                                    <li><span class="font-weight-600">Phone: </span>{{$profiles->phone}}</li>
                                    <li><span class="font-weight-600">Address: </span>{{$profiles->address}}</li>
                                    <li><span class="font-weight-600">Email: </span>{{$profiles->email}}</li>
                                    <li><span class="font-weight-600">Spoken Langages: </span>{{$profiles->language}}</li>
                                    <li><span class="font-weight-600">LinkedIn: </span>{{$profiles->social}}</li>
                                </ul>
                            </div>
                            <a href="#" class="col s12 m12 l4 xl4 waves-effect waves-light btn font-weight-500">
                                Download Resume <i class="fa fa-file-pdf-o"></i>
                            </a>
                            <a href="#" class="col s12 m12 l4 xl4 btn btn-blog font-weight-500">
                                My Blog <i class="fa fa-edit"></i>
                            </a>
                        </div>
                    </div>
                    <!-- Personal Informations Ends -->
                </div>
                <!-- Resume Starts -->
                <div class="resume-container">
                    <div class="container">
                        <div class="valign-wrapper row">
                            <!-- Resume Menu Starts -->
                            <div class="resume-list col l4">
                                <div class="resume-list-item is-active" data-index="0" id="resume-list-item-0">
                                    <div class="resume-list-item-inner">
                                        <h6 class="resume-list-item-title uppercase"><i class="fa fa-briefcase"></i> Experience</h6>
                                    </div>
                                </div>
                                <div class="resume-list-item" data-index="1" id="resume-list-item-1">
                                    <div class="resume-list-item-inner">
                                        <h6 class="resume-list-item-title uppercase"><i class="fa fa-graduation-cap"></i> Education</h6>
                                    </div>
                                </div>
                                <div class="resume-list-item" data-index="2" id="resume-list-item-2">
                                    <div class="resume-list-item-inner">
                                        <h6 class="resume-list-item-title uppercase"><i class="fa fa-star"></i> Skills</h6>
                                    </div>
                                </div>
                            </div>
                            <!-- Resume Menu Ends -->
                            <!-- Resume Content Starts -->
                            <div class="col s12 m12 l8 resume-cards-container">
                                <div class="resume-cards">
                                    <!-- Experience Starts -->
                                    <div class="resume-card resume-card-0" data-index="0">
                                        <!-- Experience Header Title Starts -->
                                        <div class="resume-card-header">
                                            <div class="resume-card-name"><i class="fa fa-briefcase"></i> Experience</div>
                                        </div>
                                        <!-- Experience Header Title Ends -->
                                        <!-- Experience Content Starts -->
                                        <div class="resume-card-body experience">
                                            <div class="resume-card-body-container second-font">
                                                <!-- Single Experience Starts -->
                                                @foreach ($experiences as $experience)
                                                    <div class="resume-content">
                                                        <h6 class="uppercase"><span>{{ $experience->title }}</span></h6>
                                                        <span class="date"><i class="fa fa-calendar-o"></i> {{ $experience->time }} </span>
                                                        <p>{{ $experience->description }}</p>
                                                    </div>
                                                @endforeach                         
                                                <!-- Single Experience Ends -->
                                                <span class="separator"></span>
                                            </div>
                                        </div>
                                        <!-- Experience Content Starts -->
                                    </div>
                                    <!-- Experience Ends -->
                                    <!-- Education Starts -->
                                    <div class="resume-card resume-card-1" data-index="1">
                                        <!-- Education Header Title Starts -->
                                        <div class="resume-card-header">
                                            <div class="resume-card-name"><i class="fa fa-graduation-cap"></i> Education</div>
                                        </div>
                                        <!-- Education Header Title Starts -->
                                        <div class="resume-card-body education">
                                            <div class="resume-card-body-container second-font">
                                                <!-- Single Education Starts -->
                                                @foreach ($educations as $education)
                                                    <div class="resume-content">
                                                        <h6 class="uppercase"><span>{{ $education->title }}</span></h6>
                                                        <span class="date"><i class="fa fa-calendar-o"></i> {{ $education->time }}</span>
                                                        <p>{{ $education->description }}</p>
                                                    </div>
                                                    <!-- Single Education Ends -->
                                                    <span class="separator"></span>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Education Ends -->
                                    <!-- Skills Starts -->
                                    <div class="resume-card resume-card-2" data-index="2">
                                        <!-- Skills Header Title Starts -->
                                        <div class="resume-card-header">
                                            <div class="resume-card-name"><i class="fa fa-star"></i> Skills</div>
                                        </div>
                                        <!-- Skills Header Title Starts -->
                                        <div class="resume-card-body skills">
                                            <div class="resume-card-body-container second-font">
                                                <div class="row">
                                                    <!-- Skills Row Starts -->
                                                    <div class="col s6">
                                                        <!-- Single Skills Starts -->
                                                        @foreach ($skills1 as $skill1)
                                                            <div class="resume-content">
                                                                <h6 class="uppercase">{{$skill1->title}}</h6>
                                                                <p>
                                                                    @if ($skill1->value == '1')
                                                                        <i class="fa fa-star"></i> 
                                                                        <i class="fa fa-star-o"></i> 
                                                                        <i class="fa fa-star-o"></i> 
                                                                        <i class="fa fa-star-o"></i> 
                                                                        <i class="fa fa-star-o"></i> 
                                                                    @elseif($skill1->value == '1.5')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-half-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill1->value == '2')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill1->value == '2.5')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-half-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill1->value == '3')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill1->value == '3.5')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-half-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill1->value == '4')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill1->value == '4.5')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-half-o"></i>
                                                                    @elseif($skill1->value == '5')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @endif
                                                                </p>
                                                            </div>
                                                        @endforeach
                                                        <!-- Single Skills Ends -->
                                                    </div>
                                                    <!-- Skills Row Ends -->
                                                    <!-- Skills Row Starts -->
                                                    <div class="col s6">
                                                        <!-- Single Skills Starts -->
                                                        @foreach ($skills2 as $skill2)
                                                            <div class="resume-content">
                                                                <h6 class="uppercase">{{$skill2->title}}</h6>
                                                                <p>
                                                                        @if ($skill2->value == '1')
                                                                        <i class="fa fa-star"></i> 
                                                                        <i class="fa fa-star-o"></i> 
                                                                        <i class="fa fa-star-o"></i> 
                                                                        <i class="fa fa-star-o"></i> 
                                                                        <i class="fa fa-star-o"></i> 
                                                                    @elseif($skill2->value == '1.5')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-half-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill2->value == '2')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill2->value == '2.5')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-half-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill2->value == '3')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill2->value == '3.5')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-half-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill2->value == '4')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @elseif($skill2->value == '4.5')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-half-o"></i>
                                                                    @elseif($skill2->value == '5')
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    @endif
                                                                </p>
                                                            </div>
                                                        @endforeach
                                                        <!-- Single Skills Ends -->
                                                    </div>
                                                    <!-- Skills Row Ends -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Skills Ends -->
                                </div>
                            </div>
                            <!-- Resume Content Ends -->
                        </div>
                    </div>
                </div>
                <!-- Resume Ends -->
                <!-- Fun Facts Starts -->
                <div class="container badges">
                    <div class="row">
                        <!-- Fact Badge Item Starts -->
                        <div class="col s12 m6 l6 center-align">
                            <h3>
                                <i class="fa fa-suitcase"></i>
                                <span class="font-weight-700">1+</span>
                            </h3>
                            <h6 class="uppercase font-weight-500">Years Experience</h6>
                        </div>
                        <!-- Fact Badge Item Ends -->
                        <!-- Fact Badge Item Starts -->
                        <div class="col s12 m6 l6 center-align">
                            <h3>
                                <i class="fa fa-check-square"></i>
                                <span class="font-weight-700">3+</span>
                            </h3>
                            <h6 class="uppercase font-weight-500">Done Projects</h6>
                        </div>
                        <!-- Fact Badge Item Ends -->

                    </div>
                </div>
                <!-- Fun Facts Ends -->
            </div>
            <!-- End Expanded About -->
            <img alt="close" src="images/close-button.png" class="bl-icon-close" />
        </section>
        <!-- About Ends -->
        <!-- Portfolio Starts -->
        <section id="bl-work-section">
            <!-- Portfolio Title Starts -->
            <div class="bl-box valign-wrapper">
                <div class="page-title center-align">
                    <span class="title-bg">works</span>
                    <h2 class="center-align">
                        <span data-hover="my">my </span>
                        <span data-hover="portfolio">portfolio</span>
                    </h2>
                </div>
            </div>
            <!-- Portfolio Title Ends -->
            <!-- Portfolio Expanded Starts -->
            <div class="bl-content">
                <!-- Main Heading Starts -->
                <div class="container page-title center-align">
                    <h2 class="center-align">
                        <span data-hover="my">my </span>
                        <span data-hover="portfolio">portfolio</span>
                    </h2>
                    <span class="title-bg">works</span>
                </div>
                <!-- Main Heading Ends -->
                <div class="container">
                    <!-- Divider Starts -->
                    <div class="divider center-align">
                        <span class="outer-line"></span>
                        <span class="fa fa-suitcase" aria-hidden="true"></span>
                        <span class="outer-line"></span>
                    </div>
                    <!-- Divider Ends -->
                    <div class="row center-align da-thumbs" id="bl-work-items">
                        <!-- Project Starts -->
                        @foreach ($works as $index => $work)
                        <div class="col s12 m6 l3 xl3" data-panel="panel-{{$index+1}}">
                            <a href="#">
                                <img class="responsive-img" src="{{ $work->photo }}" alt="{{$work->title}}" />
                                <div class="valign-wrapper"><span class="font-weight-400 uppercase">{{$work->title}}</span></div>
                            </a>
                        </div>
                        @endforeach
                        <!-- Project Ends -->
                    </div>
                </div>
            </div>
            <!-- Portfolio Expanded Ends -->
            <img alt="close" src="images/close-button.png" class="bl-icon-close" />
        </section>
        <!-- Portfolio Section Ends -->
        <!-- Contact Section Starts -->
        <section>
            <!-- Contact Title Starts -->
            <div class="bl-box valign-wrapper">
                <div class="page-title center-align">
                    <span class="title-bg">Contact</span>
                    <h2 class="center-align">
                        <span data-hover="get">get </span>
                        <span data-hover="in touch">in touch</span>
                    </h2>
                </div>
            </div>
            <!-- Contact Title Ends -->
            <!-- Expanded Contact Starts -->
            <div class="bl-content">
                <!-- Main Heading Starts -->
                <div class="container page-title center-align">
                    <h2 class="center-align">
                        <span data-hover="get">get </span>
                        <span data-hover="in touch">in touch</span>
                    </h2>
                    <span class="title-bg">Contact</span>
                </div>
                <!-- Main Heading Ends -->
                <div class="container">
                    <!-- Divider Starts -->
                    <div class="divider center-align">
                        <span class="outer-line"></span>
                        <span class="fa fa-envelope-open" aria-hidden="true"></span>
                        <span class="outer-line"></span>
                    </div>
                    <!-- Divider Ends -->
                    <div class="row contact">
                        <!-- Contact Infos Starts -->
                        <div class="col s12 m5 l3 xl3 leftside">
                            <!-- Contacts Starts -->
                            <h6 class="font-weight-500 uppercase">Phone</h6>
                            <span class="font-weight-400 second-font"><i class="fa fa-phone"></i> +62 8569122410</span>
                            <h6 class="font-weight-500 uppercase">Email</h6>
                            <span class="font-weight-400 second-font"><i class="fa fa-envelope"></i> rizkysampratama@gmail.com</span>
                            <h6 class="font-weight-500 uppercase">Address</h6>
                            <span class="font-weight-400 second-font"><i class="fa fa-home"></i>  Bandung, Indonesia</span><br>
                            <span class="font-weight-400 second-font">Jl. Mbah Jaksa No A66 001/011 Cipadung, Bandung</span>
                            <!-- Contacts Ends -->
                            <!-- Social Media Profiles Starts -->
                            <h6 class="font-weight-500 uppercase">Social Profiles</h6>
                            <div class="social">
                                <ul class="list-inline social social-intro center-align p-none">
                                    <li class="facebook"><a href="https://facebook.com/rizkysampratama/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                    <li class="twitter"><a href="https://twitter.com/rizkysamp/" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                    <li class="linkedin"><a href="https://www.linkedin.com/in/rizky-sam-pratama-523661149/"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                            <!-- Social Media Profiles Ends -->
                        </div>
                        <!-- Contact Infos Ends -->
                        <!-- Contact Form Starts -->
                        <div class="col s12 m7 l9 xl9 rightside">
                            <h6 class="uppercase m-none">Feel free to drop me a line</h6>
                            <div class="row">
                                <p class="col s12 m12 l7 xl7 second-font">
                                    If you have any suggestion, project or even you want to say Hello.. please fill out the form below and I will reply you shortly.
                                </p>
                            </div>
                            <form class="contactform" method="post" action="{{route('contact')}}">
                                @csrf
                                <!-- Name Field Starts -->
                                <div class="input-field second-font">
                                    <i class="fa fa-user prefix"></i>
                                    <input id="name" name="name" type="text" class="validate" required>
                                    <label class="font-weight-400" for="name">Your Name</label>
                                </div>
                                <!-- Name Field Ends -->
                                <!-- Email Field Starts -->
                                <div class="input-field second-font">
                                    <i class="fa fa-envelope prefix"></i>
                                    <input id="email" type="email" name="email" class="validate" required>
                                    <label for="email">Your Email</label>
                                </div>
                                <!-- Email Field Ends -->
                                <!-- Start Message Textarea Starts -->
                                <div class="input-field second-font">
                                    <i class="fa fa-comments prefix"></i>
                                    <textarea id="message" name="message" class="materialize-textarea" required></textarea>
                                    <label for="message">Your message</label>
                                </div>
                                <!-- Message Textarea Ends -->
                                <!-- Submit Form Button Starts -->
                                <div class="col s12 m12 l4 xl4 submit-form">
                                    <button class="btn font-weight-500" type="submit" name="send">
                                        Send Message <i class="fa fa-send"></i>
                                    </button>
                                </div>
                                <!-- Submit Form Button Ends -->
                                <div class="col s12 m12 l8 xl8 form-message">
                                    <span class="output_message center-align font-weight-500 uppercase"></span>
                                </div>
                            </form>
                        </div>
                        <!-- Contact Form Ends -->
                    </div>
                </div>
            </div>
            <!-- Expanded Contact Ends -->
            <img alt="close" src="images/close-button.png" class="bl-icon-close" />
        </section>
        <!-- Contact Section Ends -->
        <!-- Portfolio Panel Items Starts -->
        <div class="bl-panel-items" id="bl-panel-work-items">
            <!-- Project Starts -->
            @foreach ($works as $index => $work)
                <div data-panel="panel-{{$index+1}}">
                    <div class="row">
                        <!-- Project Main Content Starts -->
                        <div class="col s12 l6 xl6">
                            <img class="responsive-img" src="{{$work->photo}}" alt="{{$work->title}}" />
                        </div>
                        <!-- Project Main Content Ends -->
                        <!-- Project Details Starts -->
                        <div class="col s12 l6 xl6">
                            <h3 class="font-weight-600 white-text uppercase">{{$work->title}}</h3>
                            <ul class="project-details white-text second-font">
                                <li><i class="fa fa-user"></i><span class="font-weight-600"> Work As </span>: <span class="font-weight-400 uppercase">{{$work->work_as}}</span></li>
                                <li><i class="fa fa-user"></i><span class="font-weight-600"> Client </span>: <span class="font-weight-400 uppercase">{{$work->client}}</span></li>
                                <li><i class="fa fa-calendar"></i><span class="font-weight-600"> Date </span>: <span class="font-weight-400 uppercase">{{$work->date_project}}</span></li>
                                <li><i class="fa fa-cogs"></i> <span class="font-weight-600"> Used Technologies</span> : <span class="font-weight-400 uppercase">{{$work->technologies}}</span></li>
                            </ul>
                            <hr>
                            <p class="white-text second-font">{{$work->description}}</p>
                            <a href="{{$work->link}}" class="waves-effect waves-light btn font-weight-500" target="_blank">Preview <i class="fa fa-external-link"></i></a>
                        </div>    
                        <!-- Project Details Ends -->
                    </div>
                </div>
            @endforeach
            <!-- Project Ends -->
            <!-- Portfolio Navigation Starts -->
            <nav>
                <!-- Previous Work Icon Starts -->
                <span class="control-button bl-previous-work uppercase font-weight-700"><i class="fa fa-chevron-left"></i></span>
                <!-- Previous Work Icon Ends -->
                <!-- Close Work Icon Starts -->
                <span class="control-button fa fa-close fa-2x bl-icon-close center-align" id="bl-icon-close"></span>
                <!-- Close Work Icon Ends -->
                <!-- Next Work Icon Starts -->
                <span class="control-button bl-next-work uppercase font-weight-700"><i class="fa fa-chevron-right"></i></span>
                <!-- Previous Work Icon Ends -->
            </nav>
            <!-- Portfolio Navigation Ends -->
        </div>
        <!-- Portfolio Panel Items Ends -->
    </div>
@endsection
