.class public abstract Lcom/phicomm/speaker/player/IPlayer$Stub;
.super Landroid/os/Binder;
.source "IPlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/IPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/IPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.phicomm.speaker.player.IPlayer"

.field static final TRANSACTION_ackNewPage:I = 0x10

.field static final TRANSACTION_getCurrentSongName:I = 0xb

.field static final TRANSACTION_getPlayAllStates:I = 0xe

.field static final TRANSACTION_getPlayMode:I = 0xc

.field static final TRANSACTION_getPlayPosition:I = 0xf

.field static final TRANSACTION_isPlaying:I = 0xd

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x2

.field static final TRANSACTION_playIndex:I = 0x3

.field static final TRANSACTION_playNext:I = 0x9

.field static final TRANSACTION_playPre:I = 0x8

.field static final TRANSACTION_registerCallback:I = 0x13

.field static final TRANSACTION_setPlayMode:I = 0xa

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startFadeIn:I = 0x4

.field static final TRANSACTION_startServer:I = 0x11

.field static final TRANSACTION_stop:I = 0x7

.field static final TRANSACTION_stopFadeOut:I = 0x5

.field static final TRANSACTION_stopServer:I = 0x12

.field static final TRANSACTION_unregisterCallback:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/phicomm/speaker/player/IPlayer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.phicomm.speaker.player.IPlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/phicomm/speaker/player/IPlayer;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/phicomm/speaker/player/IPlayer;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/phicomm/speaker/player/IPlayer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/IPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 44
    :sswitch_0
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->start()Z

    move-result v3

    .line 51
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v3    # "_result":Z
    :sswitch_2
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 60
    sget-object v6, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    .line 66
    .local v0, "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v2, v5

    .line 67
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/phicomm/speaker/player/IPlayer$Stub;->play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z

    move-result v3

    .line 68
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    goto :goto_1

    :cond_3
    move v2, v4

    .line 66
    goto :goto_2

    .line 74
    .end local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :sswitch_3
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v5

    .line 79
    .restart local v2    # "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/phicomm/speaker/player/IPlayer$Stub;->playIndex(IZ)Z

    move-result v3

    .line 80
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v3, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_5
    move v2, v4

    .line 78
    goto :goto_3

    .line 86
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 89
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/IPlayer$Stub;->startFadeIn(J)Z

    move-result v3

    .line 90
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":J
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 99
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/IPlayer$Stub;->stopFadeOut(J)Z

    move-result v3

    .line 100
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 106
    .end local v0    # "_arg0":J
    .end local v3    # "_result":Z
    :sswitch_6
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->pause()Z

    move-result v3

    .line 108
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->stop()Z

    move-result v3

    .line 116
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v3, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v3    # "_result":Z
    :sswitch_8
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    move v0, v5

    .line 125
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->playPre(Z)Z

    move-result v3

    .line 126
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v3, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_b
    move v0, v4

    .line 124
    goto :goto_4

    .line 132
    :sswitch_9
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    move v0, v5

    .line 135
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->playNext(Z)Z

    move-result v3

    .line 136
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v3, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_d
    move v0, v4

    .line 134
    goto :goto_5

    .line 142
    :sswitch_a
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->setPlayMode(I)Z

    move-result v3

    .line 146
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v3, :cond_e

    move v4, v5

    :cond_e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_b
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v3

    .line 154
    .local v3, "_result":Lcom/phicomm/speaker/player/model/PlaySong;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v3, :cond_f

    .line 156
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {v3, p3, v5}, Lcom/phicomm/speaker/player/model/PlaySong;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 160
    :cond_f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 166
    .end local v3    # "_result":Lcom/phicomm/speaker/player/model/PlaySong;
    :sswitch_c
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->getPlayMode()I

    move-result v3

    .line 168
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v3    # "_result":I
    :sswitch_d
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->isPlaying()Z

    move-result v3

    .line 176
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v3, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v3    # "_result":Z
    :sswitch_e
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;

    move-result-object v3

    .line 184
    .local v3, "_result":Lcom/phicomm/speaker/player/model/PlayAllStates;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v3, :cond_11

    .line 186
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {v3, p3, v5}, Lcom/phicomm/speaker/player/model/PlayAllStates;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 190
    :cond_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v3    # "_result":Lcom/phicomm/speaker/player/model/PlayAllStates;
    :sswitch_f
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v3

    .line 198
    .local v3, "_result":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v3, :cond_12

    .line 200
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {v3, p3, v5}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 204
    :cond_12
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 210
    .end local v3    # "_result":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    :sswitch_10
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 213
    sget-object v4, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    .line 218
    .local v0, "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 216
    .end local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    goto :goto_6

    .line 224
    .end local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :sswitch_11
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->startServer()V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 231
    :sswitch_12
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->stopServer()V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 238
    :sswitch_13
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/phicomm/speaker/player/IPlayerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/phicomm/speaker/player/IPlayerCallback;

    move-result-object v0

    .line 241
    .local v0, "_arg0":Lcom/phicomm/speaker/player/IPlayerCallback;
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->registerCallback(Lcom/phicomm/speaker/player/IPlayerCallback;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 247
    .end local v0    # "_arg0":Lcom/phicomm/speaker/player/IPlayerCallback;
    :sswitch_14
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/phicomm/speaker/player/IPlayerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/phicomm/speaker/player/IPlayerCallback;

    move-result-object v0

    .line 250
    .restart local v0    # "_arg0":Lcom/phicomm/speaker/player/IPlayerCallback;
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->unregisterCallback(Lcom/phicomm/speaker/player/IPlayerCallback;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
