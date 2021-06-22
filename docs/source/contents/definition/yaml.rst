Yaml
=======================================


.. code-block:: yaml

  KeySwitches:
  - Id: d1efb793-600d-4f40-85dc-2253e1b05aa6
    Author: Author
    Description: Description
    Created: 2021-06-22T15:55:59.8150000Z
    LastUpdated: 2021-06-22T15:55:59.8540000Z
    DeveloperName: Developer Name
    ProductName: Product name
    InstrumentName: Instrument name
    Articulations:
    - Name: name
      MidiMessage:
        NoteOn:
        - Channel: 0
          Note: C-2
          Velocity: 100
        ControlChange:
        - Channel: 0
          ControlNumber: 1
          Data: 100
        ProgramChange:
        - Channel: 0
          ProgramNumber: 23
      ExtraData:
        extra1 key: extra1 value
        extra2 key: extra2 value
    ExtraData:
      extra1 key: extra1 value
      extra2 key: extra2 value


.. contents:: Contents
    :local:
    :depth: 5


KeySwitches
---------------------------------------

キースイッチ定義リスト

:Type: ``list``
:Required: ``yes``

Id
---------------------------------------

データベースがキースイッチを識別する一意のID。

:Type: ``GUID``
:Required: ``no``

:doc:`new </contents/commandline/basic>`, :doc:`export </contents/commandline/export>`, :doc:`search </contents/commandline/basic>` などプログラムが出力するので通常は編集しない

例:

    .. code-block:: yaml

        Id: d1efb793-600d-4f40-85dc-2253e1b05aa6


Author
---------------------------------------

キースイッチ作成者情報

:Type: ``string``
:Required: ``no``

例:

    .. code-block:: yaml

        Author: R-koubou


Description
---------------------------------------

キースイッチ説明

:Type: ``string``
:Required: ``no``

例:

    .. code-block:: yaml

        Description: My KeySwitch definition


Created
---------------------------------------

作成日(UTC)

:doc:`export </contents/commandline/export>`, :doc:`search </contents/commandline/basic>` などプログラムが出力するので通常は編集しない

:Type: ``DateTime``
:Required: ``yes``

例:

    .. code-block:: yaml

        Created: 2021-06-22T12:00:00.0000000Z


    .. code-block:: yaml

        Created: 2021-06-22T12:00:00Z


LastUpdated
---------------------------------------

更新日(UTC)
:doc:`export </contents/commandline/export>`, :doc:`search </contents/commandline/basic>` などプログラムが出力するので通常は編集しない


:Type: ``DateTime``
:Required: ``no``

例:

    .. code-block:: yaml

        LastUpdated: 2021-06-22T12:00:00.0000000Z


    .. code-block:: yaml

        LastUpdated: 2021-06-22T12:00:00Z


DeveloperName
---------------------------------------

音源開発者情報

:Type: ``string``
:Required: yes

例:

    .. code-block:: yaml

        DeveloperName: Fujiya Instruments

ProductName
---------------------------------------

製品名情報

:Type: ``string``
:Required: yes

例:

    .. code-block:: yaml

        ProductName: Vintage Humbucker Guitar


InstrumentName
---------------------------------------

音色名情報

:Type: ``string``
:Required: yes

例:

    .. code-block:: yaml

        InstrumentName: VHG Mono


Articulations
---------------------------------------

アーティキュレーション定義

:Type: ``list``
:Required: yes
:Allow Empty: yes

Name
~~~~~~~~~~~~~~~~~~~

アーティキュレーション名

:Type: ``string``
:Required: yes

例:

.. code-block:: yaml

    Articulations:
    - Name: PowerChord

MidiMessage
~~~~~~~~~~~~~~~~

MIDIメッセージの指定


NoteOn
^^^^^^^^^^^^^^^^

MIDIノートオンイベント

:Type: ``list``
:Required: ``no``

例:

.. code-block:: yaml

    Articulations:
    - Name: PowerChord
      MidiMessage:
        NoteOn:
          - Channel: 0
            Note: C-2
            Velocity: 100

.. code-block:: yaml

    # Multiple notes supported
    Articulations:
    - Name: PowerChord
      MidiMessage:
        NoteOn:
          - Channel: 0
            Note: C-2
            Velocity: 100
          - Channel: 0
            Note: E-2
            Velocity: 100

Channel
################

MIDIチャンネル

.. note::

    0〜15が使用可能


:Type: ``int``
:Required: yes

例:

.. code-block:: yaml

    Channel: 0

Note
################

:Type: ``int`` or ``string``
:Required: yes

.. note::

    MIDIノートナンバー、または音階名が使用可能

    :Number: 0〜127
    :Note name: C-2〜G8 (Yamaha form)

.. code-block:: yaml

    Note: C-2


Velocity
################

ベロシティ

.. note::

    0〜127が使用可能


:Type: ``int``
:Required: yes

例:

.. code-block:: yaml

    Velocity: 100


ExtraData
---------------------------------------

予約。DAW固有の情報など将来の拡張用。

:Type: ``dictionary<string, string>``
:Required: no
:Allow Empty: yes

例:

    .. code-block:: yaml

        ExtraData:
            key: value

    .. code-block:: yaml

        # Empty
        ExtraData:[]

:doc:`New </contents/commandline/basic>`
