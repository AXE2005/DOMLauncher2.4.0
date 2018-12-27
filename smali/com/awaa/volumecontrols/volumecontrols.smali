.class public Lcom/awaa/volumecontrols/volumecontrols;
.super Lorg/apache/cordova/CordovaPlugin;
.source "volumecontrols.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 19
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/awaa/volumecontrols/volumecontrols;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v15}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "audio"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 18
    .local v2, "audioManager":Landroid/media/AudioManager;
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "stream"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 19
    .local v13, "stream":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "flag"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    .local v6, "flag":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "toast"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 23
    .local v14, "toast":Ljava/lang/String;
    const-string v15, "check"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 24
    const-string v15, "ringer"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 25
    const-string v15, "percentage"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 26
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 27
    .local v5, "curVolume":I
    mul-int/lit8 v15, v5, 0x64

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v16

    div-int v15, v15, v16

    int-to-float v4, v15

    .line 28
    .local v4, "curPercent":F
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    float-to-double v0, v4

    move-wide/from16 v17, v0

    invoke-virtual/range {v15 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 63
    .end local v4    # "curPercent":F
    .end local v5    # "curVolume":I
    :cond_0
    :goto_0
    const-string v15, "up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 64
    const-string v15, "ringer"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 65
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 66
    .restart local v5    # "curVolume":I
    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 67
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 68
    const/4 v15, 0x2

    add-int/lit8 v16, v5, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 69
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 70
    .local v11, "newVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 79
    .end local v5    # "curVolume":I
    .end local v11    # "newVolume":I
    :cond_1
    :goto_1
    const-string v15, "media"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 80
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 81
    .restart local v5    # "curVolume":I
    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 82
    const/4 v15, 0x3

    add-int/lit8 v16, v5, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 83
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 84
    .restart local v11    # "newVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 94
    .end local v5    # "curVolume":I
    .end local v11    # "newVolume":I
    :cond_2
    :goto_2
    const-string v15, "percentage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 95
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "value"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 97
    .local v12, "percentVal":I
    const-string v15, "ringer"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 98
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v15

    mul-int/2addr v15, v12

    div-int/lit8 v8, v15, 0x64

    .line 99
    .local v8, "mediaVal":I
    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 100
    const/4 v15, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v8, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 101
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 108
    .end local v8    # "mediaVal":I
    :cond_3
    :goto_3
    const-string v15, "media"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 109
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v15

    mul-int/2addr v15, v12

    div-int/lit8 v8, v15, 0x64

    .line 110
    .restart local v8    # "mediaVal":I
    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 111
    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v8, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 112
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 120
    .end local v8    # "mediaVal":I
    .end local v12    # "percentVal":I
    :cond_4
    :goto_4
    const-string v15, "down"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 121
    const-string v15, "ringer"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 122
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 123
    .restart local v5    # "curVolume":I
    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 124
    if-nez v5, :cond_19

    .line 125
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 130
    :goto_5
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 131
    .restart local v11    # "newVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 144
    .end local v5    # "curVolume":I
    .end local v11    # "newVolume":I
    :cond_5
    :goto_6
    const-string v15, "media"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 145
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 146
    .restart local v5    # "curVolume":I
    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 147
    if-eqz v5, :cond_6

    .line 149
    const/4 v15, 0x3

    add-int/lit8 v16, v5, -0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 151
    :cond_6
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 152
    .restart local v11    # "newVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 166
    .end local v5    # "curVolume":I
    .end local v11    # "newVolume":I
    :cond_7
    :goto_7
    const-string v15, "mute"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 167
    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 168
    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 169
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 178
    :cond_8
    :goto_8
    const-string v15, "vibrate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 179
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 180
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 181
    .local v3, "curMode":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 185
    .end local v3    # "curMode":I
    :cond_9
    const-string v15, "silent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 186
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 187
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 188
    .restart local v3    # "curMode":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 192
    .end local v3    # "curMode":I
    :cond_a
    const-string v15, "normal"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 193
    const-string v15, "percentage"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 194
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 195
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 196
    .restart local v5    # "curVolume":I
    mul-int/lit8 v15, v5, 0x64

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v16

    div-int v15, v15, v16

    int-to-float v4, v15

    .line 197
    .restart local v4    # "curPercent":F
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    float-to-double v0, v4

    move-wide/from16 v17, v0

    invoke-virtual/range {v15 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 207
    .end local v4    # "curPercent":F
    .end local v5    # "curVolume":I
    :cond_b
    :goto_9
    const/4 v15, 0x1

    return v15

    .line 29
    :cond_c
    const-string v15, "max"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 30
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    .line 31
    .local v7, "maxVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 32
    .end local v7    # "maxVolume":I
    :cond_d
    const-string v15, "mode"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 34
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v9

    .line 35
    .local v9, "mode":I
    const/4 v10, 0x0

    .line 36
    .local v10, "modeName":Ljava/lang/String;
    if-nez v9, :cond_f

    .line 37
    const-string v10, "silent"

    .line 43
    :cond_e
    :goto_a
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 38
    :cond_f
    const/4 v15, 0x1

    if-ne v9, v15, :cond_10

    .line 39
    const-string v10, "vibrate"

    goto :goto_a

    .line 40
    :cond_10
    const/4 v15, 0x2

    if-ne v9, v15, :cond_e

    .line 41
    const-string v10, "normal"

    goto :goto_a

    .line 45
    .end local v9    # "mode":I
    .end local v10    # "modeName":Ljava/lang/String;
    :cond_11
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 46
    .restart local v5    # "curVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 48
    .end local v5    # "curVolume":I
    :cond_12
    const-string v15, "media"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 49
    const-string v15, "percentage"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 50
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 51
    .restart local v5    # "curVolume":I
    mul-int/lit8 v15, v5, 0x64

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v16

    div-int v15, v15, v16

    int-to-float v4, v15

    .line 52
    .restart local v4    # "curPercent":F
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    float-to-double v0, v4

    move-wide/from16 v17, v0

    invoke-virtual/range {v15 .. v18}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 53
    .end local v4    # "curPercent":F
    .end local v5    # "curVolume":I
    :cond_13
    const-string v15, "max"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 54
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    .line 55
    .restart local v7    # "maxVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 57
    .end local v7    # "maxVolume":I
    :cond_14
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 58
    .restart local v5    # "curVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 72
    :cond_15
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 73
    const/4 v15, 0x2

    add-int/lit8 v16, v5, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 74
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 75
    .restart local v11    # "newVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 86
    .end local v11    # "newVolume":I
    :cond_16
    const/4 v15, 0x3

    add-int/lit8 v16, v5, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 87
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 88
    .restart local v11    # "newVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 103
    .end local v5    # "curVolume":I
    .end local v11    # "newVolume":I
    .restart local v8    # "mediaVal":I
    .restart local v12    # "percentVal":I
    :cond_17
    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v8, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 104
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 114
    :cond_18
    const/4 v15, 0x3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v8, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 115
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_4

    .line 127
    .end local v8    # "mediaVal":I
    .end local v12    # "percentVal":I
    .restart local v5    # "curVolume":I
    :cond_19
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 128
    const/4 v15, 0x2

    add-int/lit8 v16, v5, -0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_5

    .line 133
    :cond_1a
    if-nez v5, :cond_1b

    .line 134
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 139
    :goto_b
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 140
    .restart local v11    # "newVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_6

    .line 136
    .end local v11    # "newVolume":I
    :cond_1b
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 137
    const/4 v15, 0x2

    add-int/lit8 v16, v5, -0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_b

    .line 154
    :cond_1c
    if-eqz v5, :cond_1d

    .line 156
    const/4 v15, 0x3

    add-int/lit8 v16, v5, -0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 158
    :cond_1d
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 159
    .restart local v11    # "newVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_7

    .line 171
    .end local v5    # "curVolume":I
    .end local v11    # "newVolume":I
    :cond_1e
    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 172
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 199
    :cond_1f
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 200
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 201
    .restart local v5    # "curVolume":I
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v16, "returnVal"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_9
.end method
