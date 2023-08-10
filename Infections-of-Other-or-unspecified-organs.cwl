cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  infections-of-other-or-unspecified-organs-salmonella---secondary:
    run: infections-of-other-or-unspecified-organs-salmonella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  infections-of-other-or-unspecified-organs---secondary:
    run: infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-salmonella---secondary/output
  infections-of-other-or-unspecified-organs-tuberculosis---secondary:
    run: infections-of-other-or-unspecified-organs-tuberculosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs---secondary/output
  infections-of-other-or-unspecified-organs-plague---secondary:
    run: infections-of-other-or-unspecified-organs-plague---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-tuberculosis---secondary/output
  infections-of-other-or-unspecified-organs-tularaemia---secondary:
    run: infections-of-other-or-unspecified-organs-tularaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-plague---secondary/output
  infections-of-other-or-unspecified-organs-anthrax---secondary:
    run: infections-of-other-or-unspecified-organs-anthrax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-tularaemia---secondary/output
  infections-of-other-or-unspecified-organs-brucellosis---secondary:
    run: infections-of-other-or-unspecified-organs-brucellosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-anthrax---secondary/output
  infections-of-other-or-unspecified-organs-fever---secondary:
    run: infections-of-other-or-unspecified-organs-fever---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-brucellosis---secondary/output
  erysipeloid-infections-of-other-or-unspecified-organs---secondary:
    run: erysipeloid-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-fever---secondary/output
  infections-of-other-or-unspecified-organs-leptospirosis---secondary:
    run: infections-of-other-or-unspecified-organs-leptospirosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: erysipeloid-infections-of-other-or-unspecified-organs---secondary/output
  mycobacterial-infections-of-other-or-unspecified-organs---secondary:
    run: mycobacterial-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-leptospirosis---secondary/output
  infections-of-other-or-unspecified-organs-leprosy---secondary:
    run: infections-of-other-or-unspecified-organs-leprosy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: mycobacterial-infections-of-other-or-unspecified-organs---secondary/output
  infections-of-other-or-unspecified-organs-listeriosis---secondary:
    run: infections-of-other-or-unspecified-organs-listeriosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-leprosy---secondary/output
  infections-of-other-or-unspecified-organs-diphtheria---secondary:
    run: infections-of-other-or-unspecified-organs-diphtheria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-listeriosis---secondary/output
  meningococcal-infections-of-other-or-unspecified-organs---secondary:
    run: meningococcal-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-diphtheria---secondary/output
  infections-of-other-or-unspecified-organs-actinomycosis---secondary:
    run: infections-of-other-or-unspecified-organs-actinomycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: meningococcal-infections-of-other-or-unspecified-organs---secondary/output
  infections-of-other-or-unspecified-organs-nocardiosis---secondary:
    run: infections-of-other-or-unspecified-organs-nocardiosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-actinomycosis---secondary/output
  infections-of-other-or-unspecified-organs-bartonellosis---secondary:
    run: infections-of-other-or-unspecified-organs-bartonellosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-nocardiosis---secondary/output
  congenital-infections-of-other-or-unspecified-organs---secondary:
    run: congenital-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-bartonellosis---secondary/output
  infections-of-other-or-unspecified-organs-syphilis---secondary:
    run: infections-of-other-or-unspecified-organs-syphilis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: congenital-infections-of-other-or-unspecified-organs---secondary/output
  latent-infections-of-other-or-unspecified-organs---secondary:
    run: latent-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-syphilis---secondary/output
  early-infections-of-other-or-unspecified-organs---secondary:
    run: early-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: latent-infections-of-other-or-unspecified-organs---secondary/output
  gonococcal-infections-of-other-or-unspecified-organs---secondary:
    run: gonococcal-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: early-infections-of-other-or-unspecified-organs---secondary/output
  chlamydial-infections-of-other-or-unspecified-organs---secondary:
    run: chlamydial-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: gonococcal-infections-of-other-or-unspecified-organs---secondary/output
  infections-of-other-or-unspecified-organs-trichomoniasis---secondary:
    run: infections-of-other-or-unspecified-organs-trichomoniasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: chlamydial-infections-of-other-or-unspecified-organs---secondary/output
  infections-of-other-or-unspecified-organs-transmitted---secondary:
    run: infections-of-other-or-unspecified-organs-transmitted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-trichomoniasis---secondary/output
  infections-of-other-or-unspecified-organs-yaws---secondary:
    run: infections-of-other-or-unspecified-organs-yaws---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-transmitted---secondary/output
  infections-of-other-or-unspecified-organs-rickettsioses---secondary:
    run: infections-of-other-or-unspecified-organs-rickettsioses---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-yaws---secondary/output
  infections-of-other-or-unspecified-organs-dengue---secondary:
    run: infections-of-other-or-unspecified-organs-dengue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-rickettsioses---secondary/output
  cytomegaloviral-infections-of-other-or-unspecified-organs---secondary:
    run: cytomegaloviral-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-dengue---secondary/output
  viral-infections-of-other-or-unspecified-organs---secondary:
    run: viral-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: cytomegaloviral-infections-of-other-or-unspecified-organs---secondary/output
  herpesviral-infections-of-other-or-unspecified-organs---secondary:
    run: herpesviral-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: viral-infections-of-other-or-unspecified-organs---secondary/output
  infections-of-other-or-unspecified-organs-varicella---secondary:
    run: infections-of-other-or-unspecified-organs-varicella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: herpesviral-infections-of-other-or-unspecified-organs---secondary/output
  infections-of-other-or-unspecified-organs-zoster---secondary:
    run: infections-of-other-or-unspecified-organs-zoster---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-varicella---secondary/output
  infections-of-other-or-unspecified-organs-measles---secondary:
    run: infections-of-other-or-unspecified-organs-measles---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-zoster---secondary/output
  infections-of-other-or-unspecified-organs-rubella---secondary:
    run: infections-of-other-or-unspecified-organs-rubella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-measles---secondary/output
  infections-of-other-or-unspecified-organs-resulting---secondary:
    run: infections-of-other-or-unspecified-organs-resulting---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-rubella---secondary/output
  infections-of-other-or-unspecified-organs-immunodeficiency---secondary:
    run: infections-of-other-or-unspecified-organs-immunodeficiency---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-resulting---secondary/output
  infections-of-other-or-unspecified-organs-mumps---secondary:
    run: infections-of-other-or-unspecified-organs-mumps---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-immunodeficiency---secondary/output
  infections-of-other-or-unspecified-organs-virus---secondary:
    run: infections-of-other-or-unspecified-organs-virus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-mumps---secondary/output
  infections-of-other-or-unspecified-organs-candidiasis---secondary:
    run: infections-of-other-or-unspecified-organs-candidiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-virus---secondary/output
  infections-of-other-or-unspecified-organs-paracoccidioidomycosis---secondary:
    run: infections-of-other-or-unspecified-organs-paracoccidioidomycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-candidiasis---secondary/output
  infections-of-other-or-unspecified-organs-toxoplasmosis---secondary:
    run: infections-of-other-or-unspecified-organs-toxoplasmosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-paracoccidioidomycosis---secondary/output
  infections-of-other-or-unspecified-organs-blastomycosis---secondary:
    run: infections-of-other-or-unspecified-organs-blastomycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-toxoplasmosis---secondary/output
  infections-of-other-or-unspecified-organs-disseminated---secondary:
    run: infections-of-other-or-unspecified-organs-disseminated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-blastomycosis---secondary/output
  infections-of-other-or-unspecified-organs-forms---secondary:
    run: infections-of-other-or-unspecified-organs-forms---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-disseminated---secondary/output
  infections-of-other-or-unspecified-organs-sporotrichosis---secondary:
    run: infections-of-other-or-unspecified-organs-sporotrichosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-forms---secondary/output
  infections-of-other-or-unspecified-organs-chromomycosis---secondary:
    run: infections-of-other-or-unspecified-organs-chromomycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-sporotrichosis---secondary/output
  infections-of-other-or-unspecified-organs-aspergillosis---secondary:
    run: infections-of-other-or-unspecified-organs-aspergillosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-chromomycosis---secondary/output
  infections-of-other-or-unspecified-organs-cryptococcosis---secondary:
    run: infections-of-other-or-unspecified-organs-cryptococcosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-aspergillosis---secondary/output
  infections-of-other-or-unspecified-organs-mucormycosis---secondary:
    run: infections-of-other-or-unspecified-organs-mucormycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-cryptococcosis---secondary/output
  infections-of-other-or-unspecified-organs-eumycetoma---secondary:
    run: infections-of-other-or-unspecified-organs-eumycetoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-mucormycosis---secondary/output
  infections-of-other-or-unspecified-organs-actinomycetoma---secondary:
    run: infections-of-other-or-unspecified-organs-actinomycetoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-eumycetoma---secondary/output
  infections-of-other-or-unspecified-organs-classified---secondary:
    run: infections-of-other-or-unspecified-organs-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-actinomycetoma---secondary/output
  infections-of-other-or-unspecified-organs-falciparum---secondary:
    run: infections-of-other-or-unspecified-organs-falciparum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-classified---secondary/output
  infections-of-other-or-unspecified-organs-plasmodium---secondary:
    run: infections-of-other-or-unspecified-organs-plasmodium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-falciparum---secondary/output
  infections-of-other-or-unspecified-organs-malaria---secondary:
    run: infections-of-other-or-unspecified-organs-malaria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-plasmodium---secondary/output
  infections-of-other-or-unspecified-organs-leishmaniasis---secondary:
    run: infections-of-other-or-unspecified-organs-leishmaniasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-malaria---secondary/output
  infections-of-other-or-unspecified-organs-chagas'---secondary:
    run: infections-of-other-or-unspecified-organs-chagas'---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-leishmaniasis---secondary/output
  infections-of-other-or-unspecified-organs-protozoal---secondary:
    run: infections-of-other-or-unspecified-organs-protozoal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-chagas'---secondary/output
  infections-of-other-or-unspecified-organs-granulosus---secondary:
    run: infections-of-other-or-unspecified-organs-granulosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-protozoal---secondary/output
  infections-of-other-or-unspecified-organs-multilocularis---secondary:
    run: infections-of-other-or-unspecified-organs-multilocularis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-granulosus---secondary/output
  infections-of-other-or-unspecified-organs-taeniasis---secondary:
    run: infections-of-other-or-unspecified-organs-taeniasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-multilocularis---secondary/output
  infections-of-other-or-unspecified-organs-cysticercosis---secondary:
    run: infections-of-other-or-unspecified-organs-cysticercosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-taeniasis---secondary/output
  infections-of-other-or-unspecified-organs-dracunculiasis---secondary:
    run: infections-of-other-or-unspecified-organs-dracunculiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-cysticercosis---secondary/output
  infections-of-other-or-unspecified-organs-onchocerciasis---secondary:
    run: infections-of-other-or-unspecified-organs-onchocerciasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-dracunculiasis---secondary/output
  infections-of-other-or-unspecified-organs-filariasis---secondary:
    run: infections-of-other-or-unspecified-organs-filariasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-onchocerciasis---secondary/output
  infections-of-other-or-unspecified-organs-trichinellosis---secondary:
    run: infections-of-other-or-unspecified-organs-trichinellosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-filariasis---secondary/output
  infections-of-other-or-unspecified-organs-hookworm---secondary:
    run: infections-of-other-or-unspecified-organs-hookworm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-trichinellosis---secondary/output
  infections-of-other-or-unspecified-organs-ascariasis---secondary:
    run: infections-of-other-or-unspecified-organs-ascariasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-hookworm---secondary/output
  infections-of-other-or-unspecified-organs-strongyloidiasis---secondary:
    run: infections-of-other-or-unspecified-organs-strongyloidiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-ascariasis---secondary/output
  infections-of-other-or-unspecified-organs-trichuriasis---secondary:
    run: infections-of-other-or-unspecified-organs-trichuriasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-strongyloidiasis---secondary/output
  infections-of-other-or-unspecified-organs-enterobiasis---secondary:
    run: infections-of-other-or-unspecified-organs-enterobiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-trichuriasis---secondary/output
  infections-of-other-or-unspecified-organs-myiasis---secondary:
    run: infections-of-other-or-unspecified-organs-myiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-enterobiasis---secondary/output
  parasitic-infections-of-other-or-unspecified-organs---secondary:
    run: parasitic-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-myiasis---secondary/output
  infections-of-other-or-unspecified-organs-sequelae---secondary:
    run: infections-of-other-or-unspecified-organs-sequelae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: parasitic-infections-of-other-or-unspecified-organs---secondary/output
  infections-of-other-or-unspecified-organs-agent---secondary:
    run: infections-of-other-or-unspecified-organs-agent---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-sequelae---secondary/output
  infectious-infections-of-other-or-unspecified-organs---secondary:
    run: infectious-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-agent---secondary/output
  multiple-infections-of-other-or-unspecified-organs---secondary:
    run: multiple-infections-of-other-or-unspecified-organs---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: infectious-infections-of-other-or-unspecified-organs---secondary/output
  infections-of-other-or-unspecified-organs-identified---secondary:
    run: infections-of-other-or-unspecified-organs-identified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: multiple-infections-of-other-or-unspecified-organs---secondary/output
  infections-of-other-or-unspecified-organs-manifestation---secondary:
    run: infections-of-other-or-unspecified-organs-manifestation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-identified---secondary/output
  infections-of-other-or-unspecified-organs-abscess---secondary:
    run: infections-of-other-or-unspecified-organs-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-manifestation---secondary/output
  infections-of-other-or-unspecified-organs-myositis---secondary:
    run: infections-of-other-or-unspecified-organs-myositis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-abscess---secondary/output
  infections-of-other-or-unspecified-organs-synovitis---secondary:
    run: infections-of-other-or-unspecified-organs-synovitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-myositis---secondary/output
  infections-of-other-or-unspecified-organs-bursitis---secondary:
    run: infections-of-other-or-unspecified-organs-bursitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-synovitis---secondary/output
  infections-of-other-or-unspecified-organs-period---secondary:
    run: infections-of-other-or-unspecified-organs-period---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-bursitis---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: infections-of-other-or-unspecified-organs-period---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
