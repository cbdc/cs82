<resource schema="cs82">
  <meta name="title">CS82</meta>
  <meta name="creationDate">2017-11-18T01:02:03</meta>
  <meta name="description">
    CS82 project carried a series of observation using the 'i' filter 
    of the CFHTelescope covering the Stripe82 as deep as mag=23.
  </meta>
  <meta name="creator.name">cs82</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">Optical</meta>

  <meta name="coverage">
    <meta name="profile">Box ICRS 0 0 120 3</meta>
    <meta name="waveband">Optical</meta>
  </meta>

  <meta name="source">
    2017.inpress;
  </meta>

  <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="OBJID_CS82">
    <index columns="RA,DEC"/>

    <column name="OBJID_CS82" type="bigint"
      ucd="meta.id;meta.main"
      tablehead="OBJID" verbLevel="1"
      description="Object ID ($index)"
      required="True"/>

    <column name="RA" type="real"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="Right Ascension(RA)" verbLevel="1"
      description="Right ascension of barycenter (J2000)"
      required="True"/>

    <column name="DEC" type="real"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="Declination(Dec)" verbLevel="1"
      description="Declination of barycenter (J2000)"
      required="True"/>

    <column name="MAG_AUTO" type="real"
      unit="mag" ucd="phot.mag;em.opt.I;meta.main"
      tablehead="MAG_AUTO" verbLevel="1"
      description="Kron-like elliptical aperture magnitude filter i"
      required="True"/>

    <column name="MAGERR_AUTO" type="real"
      unit="mag" ucd="stat.error;phot.mag;em.opt.I;meta.main"
      tablehead="MAGERR_AUTO" verbLevel="1"
      description="RMS error for AUTO magnitude filter i"
      required="True"/>

  </table>

  <data id="import">
    <sources>cs82_phz_REDUCED.fits</sources>

    <fitsTableGrammar/>

    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">CS82 catalog</meta>
    <meta name="shortName">CS82 cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">0.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <!--publish render="scs.xml" sets="ivo_managed"/-->
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
