Yaml
=======================================

**フォーマット**

.. code-block:: yaml

  KeySwitches:
  - Id: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
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

**例**

    .. code-block:: yaml

        Id: d1efb793-600d-4f40-85dc-2253e1b05aa6


Author
---------------------------------------

キースイッチ作成者情報

:Type: ``string``
:Required: ``no``

**例**

    .. code-block:: yaml

        Author: R-koubou


Description
---------------------------------------

キースイッチ説明

:Type: ``string``
:Required: ``no``

**例**

    .. code-block:: yaml

        Description: My KeySwitch definition


Created
---------------------------------------

作成日(UTC)

:doc:`export </contents/commandline/export>`, :doc:`search </contents/commandline/basic>` などプログラムが出力するので通常は編集しない

:Type: ``DateTime``
:Required: ``yes``

**例**

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

**例**

    .. code-block:: yaml

        LastUpdated: 2021-06-22T12:00:00.0000000Z


    .. code-block:: yaml

        LastUpdated: 2021-06-22T12:00:00Z


DeveloperName
---------------------------------------

音源開発者情報

:Type: ``string``
:Required: yes

**例**

    .. code-block:: yaml

        DeveloperName: Fujiya Instruments

ProductName
---------------------------------------

製品名情報

:Type: ``string``
:Required: yes

**例**

    .. code-block:: yaml

        ProductName: Vintage Humbucker Guitar


InstrumentName
---------------------------------------

音色名情報

:Type: ``string``
:Required: yes

**例**

    .. code-block:: yaml

        InstrumentName: VHG Mono

----

Articulations
---------------------------------------

アーティキュレーション定義

:Type: ``list``
:Required: yes
:Allow Empty: yes

----

Name
~~~~~~~~~~~~~~~~~~~

アーティキュレーション名

:Type: ``string``
:Required: yes

**例**

.. code-block:: yaml

    Articulations:
    - Name: PowerChord

----

MidiMessage
~~~~~~~~~~~~~~~~

MIDIメッセージの指定


NoteOn
^^^^^^^^^^^^^^^^

MIDIノートオン

:Type: ``list``
:Required: ``no``

**例**

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

**例**

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

**例**

.. code-block:: yaml

    Velocity: 100

----

ControlChange
^^^^^^^^^^^^^^^^

MIDIコントールチェンジ

:Type: ``list``
:Required: ``no``

**例**

.. code-block:: yaml

    Articulations:
    - Name: PowerChord
      MidiMessage:
        ControlChange:
          - Channel: 0
            ControlNumber: 0
            Data: 100

.. code-block:: yaml

    # Multiple CC supported
    Articulations:
    - Name: PowerChord
      MidiMessage:
        ControlChange:
          - Channel: 0
            ControlNumber: 0
            Data: 100
          - Channel: 0
            ControlNumber: 1
            Data: 110

Channel
################

MIDIチャンネル

.. note::

    0〜15


:Type: ``int``
:Required: yes

**例**

.. code-block:: yaml

    Channel: 0

ControlNumber
################

コントールチェンジナンバー

:Type: ``int``
:Required: yes

.. note::

    0〜127

.. code-block:: yaml

    ControlNumber: 0


Data
################

コントールチェンジデータ値

:Type: ``int``
:Required: yes

.. note::

    0〜127

.. code-block:: yaml

    Data: 0

----

ProgramChange
^^^^^^^^^^^^^^^^

プログラムチェンジ

:Type: ``list``
:Required: ``no``

**例**

.. code-block:: yaml

    Articulations:
    - Name: PowerChord
      MidiMessage:
        ProgramChange:
          - Channel: 0
            ProgramNumber: 0

.. code-block:: yaml

    # Multiple PC supported
    Articulations:
    - Name: PowerChord
      MidiMessage:
        ProgramChange:
          - Channel: 0
            ProgramNumber: 0
          - Channel: 1
            ProgramNumber: 1

Channel
################

MIDIチャンネル

.. note::

    0〜15


:Type: ``int``
:Required: yes

**例**

.. code-block:: yaml

    Channel: 0

ProgramNumber
################

プログラムナンバー

:Type: ``int``
:Required: yes

.. note::

    0〜127

**例**

.. code-block:: yaml

    ProgramNumber: 0

----

.. ExtraData@Articulation

ExtraData
~~~~~~~~~~~~~~~~~~~

予約。将来の拡張用。

:Required: no

see: :ref:`ref_ext_format`

**例**

.. code-block:: yaml

    Articulations:
    - Name: PowerChord
      ExtraData:
        Key: Value

.. ExtraData@KeySwitch

----

ExtraData
---------------------------------------

予約。将来の拡張用。

:Required: no

see: :ref:`ref_ext_format`

**例**

.. code-block:: yaml

  KeySwitches:
  - Id: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
    :
    :
    ExtraData:
      Key: Value

----

.. _ref_ext_format:

ExtraDataフォーマット
---------------------------------------

:Type: ``dictionary<string, string>``
:Allow Empty: yes

.. code-block:: yaml

    ExtraData:
        key: value

.. code-block:: yaml

    # Empty
    ExtraData:[]
