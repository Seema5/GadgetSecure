<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 1/3/18
  Time: 1:04 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
</head>

<body>

<div style="background-color:#6c757d;border-radius:30px;margin:3%">

    <form action="#" style="padding:30px" align="center" >
        <input type="text" name="jobkeyword" placeholder="Search by Job Keywords" style="width:40%">&nbsp;&nbsp;&nbsp;
        <input type="text" name="joblocation"placeholder="Search by Job Location" style="width:40%">&nbsp;&nbsp;&nbsp;
        <input type="button" value="search" name="submit"  style="background-color:#721c24;width:8%;color:white;border-color: #721c24;border-radius: 5px">
    </form>
</div>
<g:link controller="utility" action="currentOpening" style="color: black;margin-left: 10%;font-weight: bold;padding-left: 5px;padding-right: 5px;border: 1px solid red;border-radius: 5px"> <i class="ti-angle-double-left">BACK</i></g:link>
<div style="padding:3%">
    <div class="jobDisplayShell" itemscope="itemscope" itemtype="http://schema.org/JobPosting">
        <div class="jobDisplay">
            <div class="jobTitle">
                <h4 id="job-title" itemprop="title">Area Sales Manager/Executive/Officer</h4>

                <div class="btn-group btn-social btn-social-apply pull-right ">
                    <button class="btn btn-primary btn-large btn-lg dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-label="Apply now" href="#">Apply now <span class="caret"></span></button>
                    <ul role="menu" class="dropdown-menu socialbutton">

                        <li class="tc-provider-option">
                            <a href="#" style="color: #0b0c0f; font-size: 14px">
                                <i class="ti-linkedin"></i>&nbsp;&nbsp;
                            Apply with LinkedIn
                            </a>

                        </li>

                        <li class="divider"></li>
                        <li class="tc-provider-option">
                           <g:link controller="utility" action="submitDetail" style="color:#0b0c0f;font-size: 14px"><i class="ti-write"></i>&nbsp;&nbsp;
                            Apply Now
                           </g:link>

                        </li>

                    </ul>
                </div>
            </div>
            <p lang="en_US" xml:lang="en_US" class="jobDate" id="job-date"><strong>Date: </strong>
                <span itemprop="datePosted">Feb 28, 2018
                </span>
            </p>
            <p lang="en_US" xml:lang="en_US" class="jobLocation" id="job-location">
                <strong>Location: </strong>
                <span itemprop="jobLocation">Nagpur, Maharastra</span>
            </p>
            <p id="job-company" class="jobCompany" lang="en_US" xml:lang="en_US">
                <strong>Company: </strong>
                <span itemprop="hiringOrganization">Gadget Secure</span>
            </p>
            <div class="job">
                <span itemprop="description"><p style="text-align:justify;font-size:12.0px;font-family:Arial, Helvetica, sans-serif">
                    <strong>Work Area: </strong>Sales Manager<br>
                    <strong>Expected Travel: </strong>0 - 10%<br>
                    <strong>Career Status: </strong>Professional<br>
                    <strong>Employment Type: </strong>Regular Full Time<br>
                    <br>
                    <p><strong>COMPANY DESCRIPTION</strong></p>

                    <p>The Senior Consultant- FI/CO will be a member of our Solution Delivery Center (SDC) organization. The SDC is the integrated, remote delivery arm of SAP consulting services, with strength of over 2000 team members. From our nearshore and offshore centers, our global talent pool of consultants deliver software and services to our customers through both factory and traditional people based approaches. Our team drives value and continuous improvement for our customers using operationally sound processes and basic quality system fundamentals. Providing our consultant&rsquo;s training, certification, and skill expansion opportunities are key priorities our organization&rsquo;s success and long-term employee career growth within the SDC.</p>

                    <p>We are growing a Kuala Lumpur based nearshore center to expand our delivery capabilities within the Asia Pacific region. Our desire is to provide SAP&rsquo;s customers access to the best global network of consultants with expertise in SAP&rsquo;s latest technologies. The nearshore center will be a sophisticated Service &amp; Knowledge organization providing unique capabilities to SAP&rsquo;s customers in the region and around the globe.</p>

                    <p>&nbsp;<strong>PURPOSE AND OBJECTIVES</strong></p>

                    <p>Work on customer facing project implementations as FI/CO consultant from SAP Solution Delivery center.</p>

                    <p>&nbsp;</p>

                    <p><strong>Position Summary:</strong></p>

                    <p>As a&nbsp;FI/CO Consultant,&nbsp;you will facilitate the implementation and support of the SAP S/4 HANA Financial Accounting and Managerial Accounting solutions to enhance the clients&rsquo; business functionality and overall performance, while maintaining a high degree of customer satisfaction.&nbsp; In addition,&nbsp;you will partner with clients to analyze and define business requirements, processes and objectives to scope project and deliverables for same.&nbsp;&nbsp;As a&nbsp;consultant, you will implement, customize and test solutions on client systems and develop client-specific enhancements to meet business requirements, as well&nbsp;assisting clients in achieving their Digital Transformation vision and Best-Run Business capability from their SAP and other IT investments.</p>

                    <p>&nbsp;</p>

                    <p>You will provide comprehensive advice to our customers on long-term (Big Picture) and short-term (Quick-win) perspectives on their key strategic imperatives and recommends innovations which anticipate the future directions of both business and IT stakeholders. Excellent facilitation and communication skills are essential as is engaging with executive stakeholders, partners and SAP account teams.&nbsp;</p>

                    <p>&nbsp;</p>

                    <p><strong>EXPECTATIONS &amp; TASKS:</strong></p>

                    <ul>
                        <li>Facilitate collaborative architecture discussions with our customer, IT and business executives</li>
                        <li>Guide customer teams in using Enterprise Architecture frameworks, establishing governance models and implementing business process modeling disciplines</li>
                        <li>Influence transition states toward joint business outcomes building on SAP solution value</li>
                        <li>Leverage industry and SAP reference architectures</li>
                        <li>Be actively involved in the preparation, conceptualization, realization and Go Live of customer implementation projects</li>
                        <li>Perform feasibility studies and process design reviews</li>
                        <li>Develop detailed plan of process implementation</li>
                        <li>Define detailed blueprint for development requirements</li>
                        <li>Assist in the development of the overall project plan (scoping process) as well as individual work plans</li>
                        <li>Acting as liaison with client for troubleshooting (investigates, analyses, and solves software problems)</li>
                        <li>Analyze and map clients&rsquo; business requirements, processes and objectives; develop necessary product modifications to satisfy clients&rsquo; needs.</li>
                        <li>Support the internal Finance Consulting Practice with pre-sales support, spot consulting and internal projects and commit to the success of customers, partners, colleagues, and SAP</li>
                        <li>Identify, extract, and share knowledge assets from S/4HANA projects with the internal Finance Consulting Practice
                            <p>&nbsp;</p>

                            <p><strong>EDUCATION &amp; QUALIFICATIONS:</strong></p>

                            <p>&nbsp;</p>
                        </li>
                    </ul>

                    <ul>
                        <li>Graduate (preferably with Accounting Background), with domain experience in Accounting and Cost Accounting.</li>
                        <li>A minimum of 7 years SAP consulting experience with at least 5 years in Finance and at least 2 end to end implementations</li>
                        <li>Overall knowledge of SAP Finance solution and with the certification in SAP FI/CO</li>
                        <li>Strong knowledge of Financial Accounting and Managerial Accounting processes and best practices</li>
                        <li>Proven experience in configuring, testing, and supporting SAP Finance solutions</li>
                        <li>Ability to conduct complex and interactive solutioning workshops</li>
                        <li>Proven expertise and commitment to knowledge management and mentoring</li>
                        <li>Expertise in the configuration and implementation of Financial Accounting (FI)</li>
                        <li>Expertise in the configuration and implementation of Managerial Accounting (CO)</li>
                        <li>Expertise in the integration of Finance with other SAP solutions</li>
                        <li>Strong leadership skills with the ability to lead customer engagements at an executive level</li>
                        <li>Excellent interpersonal skills in areas such as teamwork, facilitation and negotiation</li>
                        <li>Strong written, verbal communication and presentation skills; ability to present and discuss strategies and technical information in a manner that establishes rapport, persuades others, and establishes understanding for technical and non-technical audiences</li>
                        <li>Ability to estimate the financial impact of various solution architecture alternatives</li>
                        <li>Experience with license and services pre-sales activities, a plus</li>
                        <li>Experience with SAP S/4HANA a plus</li>
                        <li>Experience with SAP Activate Methodology for Implementation a plus</li>
                        <li>Experience working directly for a large consulting company a plus</li>
                        <li>ABAP development and debugging skills a plus.</li>
                        <li>Central Finance experience is a plus.</li>
                        <li>Experience in Off Shore-Onsite delivery model is a must</li>
                        <li>Experience in preparation of Functional Specifications is a must</li>
                    </ul>

                    <p>&nbsp;</p>

                    <p><strong>Key Performance Indicators</strong></p>

                    <ul>
                        <li>Customer satisfaction</li>
                        <li>Improving efficiency of delivery through knowledge assets &amp; services creation</li>
                        <li>Business development activities in the team</li>
                        <li>Ramp-up of internal colleagues
                            <p>&nbsp;</p>
                        </li>
                    </ul>

                </span>
                <p class="job-location">
                    <span class="jobmarkets">
                    </span>
                    <span class="jobsegments">
                        <br /><strong>Job Segment: </strong>
                        <span itemprop="industry">Pre-Sales, Financial, Consulting, SAP, ERP, Sales, Finance, Service, Technology
                        </span>
                    </span>
                </p>

            </form>


            </div>

        </div>
    </div>
</div>
<br/>
</body>
</html>