.class public abstract Lcom/kaolafm/sdk/client/IClientAPI$Stub;
.super Landroid/os/Binder;
.source "IClientAPI.java"

# interfaces
.implements Lcom/kaolafm/sdk/client/IClientAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaolafm/sdk/client/IClientAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/IClientAPI$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kaolafm.sdk.client.IClientAPI"

.field static final TRANSACTION_back:I = 0x11

.field static final TRANSACTION_backward:I = 0xe

.field static final TRANSACTION_download:I = 0x12

.field static final TRANSACTION_exitApp:I = 0x2

.field static final TRANSACTION_forward:I = 0xd

.field static final TRANSACTION_getCurrentMusicInfo:I = 0xc

.field static final TRANSACTION_getPlayState:I = 0xa

.field static final TRANSACTION_getProgress:I = 0xb

.field static final TRANSACTION_getRadioList:I = 0x13

.field static final TRANSACTION_hasNext:I = 0x18

.field static final TRANSACTION_hasPre:I = 0x17

.field static final TRANSACTION_launchApp:I = 0x1

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x3

.field static final TRANSACTION_playByKeywords:I = 0x19

.field static final TRANSACTION_playMusic:I = 0x4

.field static final TRANSACTION_playMusicList:I = 0x5

.field static final TRANSACTION_playNext:I = 0x7

.field static final TRANSACTION_playPre:I = 0x8

.field static final TRANSACTION_playSearchData:I = 0x15

.field static final TRANSACTION_search:I = 0xf

.field static final TRANSACTION_searchByType:I = 0x16

.field static final TRANSACTION_setPlayListener:I = 0x9

.field static final TRANSACTION_showSearchResult:I = 0x10

.field static final TRANSACTION_switchChannel:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p0, p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IClientAPI;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.kaolafm.sdk.client.IClientAPI"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kaolafm/sdk/client/IClientAPI;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kaolafm/sdk/client/IClientAPI$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v7

    .line 50
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->launchApp(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v1    # "_arg0":Z
    :sswitch_2
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->exitApp()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->play()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/kaolafm/sdk/client/Music;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaolafm/sdk/client/Music;

    .line 78
    .local v1, "_arg0":Lcom/kaolafm/sdk/client/Music;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playMusic(Lcom/kaolafm/sdk/client/Music;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v1    # "_arg0":Lcom/kaolafm/sdk/client/Music;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/kaolafm/sdk/client/Music;
    goto :goto_1

    .line 84
    .end local v1    # "_arg0":Lcom/kaolafm/sdk/client/Music;
    :sswitch_5
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/kaolafm/sdk/client/Music;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 88
    .local v6, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/kaolafm/sdk/client/Music;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .local v2, "_arg1":I
    invoke-virtual {p0, v6, v2}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playMusicList(Ljava/util/List;I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v2    # "_arg1":I
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/kaolafm/sdk/client/Music;>;"
    :sswitch_6
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->pause()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    :sswitch_7
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playNext()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    :sswitch_8
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playPre()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    :sswitch_9
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/PlayListener;

    move-result-object v1

    .line 119
    .local v1, "_arg0":Lcom/kaolafm/sdk/client/PlayListener;
    invoke-virtual {p0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->setPlayListener(Lcom/kaolafm/sdk/client/PlayListener;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 125
    .end local v1    # "_arg0":Lcom/kaolafm/sdk/client/PlayListener;
    :sswitch_a
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->getPlayState()I

    move-result v8

    .line 127
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v8    # "_result":I
    :sswitch_b
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->getProgress()J

    move-result-wide v8

    .line 135
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 141
    .end local v8    # "_result":J
    :sswitch_c
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->getCurrentMusicInfo()Lcom/kaolafm/sdk/client/Music;

    move-result-object v8

    .line 143
    .local v8, "_result":Lcom/kaolafm/sdk/client/Music;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v8, :cond_2

    .line 145
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v8, p3, v7}, Lcom/kaolafm/sdk/client/Music;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 149
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v8    # "_result":Lcom/kaolafm/sdk/client/Music;
    :sswitch_d
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->forward()V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    :sswitch_e
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->backward()V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 169
    :sswitch_f
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/ISearchResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/ISearchResult;

    move-result-object v2

    .line 174
    .local v2, "_arg1":Lcom/kaolafm/sdk/client/ISearchResult;
    invoke-virtual {p0, v1, v2}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->search(Ljava/lang/String;Lcom/kaolafm/sdk/client/ISearchResult;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 180
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/kaolafm/sdk/client/ISearchResult;
    :sswitch_10
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/kaolafm/sdk/client/Music;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 184
    .restart local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/kaolafm/sdk/client/Music;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v6, v2}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->showSearchResult(Ljava/util/List;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 191
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/kaolafm/sdk/client/Music;>;"
    :sswitch_11
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->back()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 198
    :sswitch_12
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->download()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 205
    :sswitch_13
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/IRadioResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IRadioResult;

    move-result-object v1

    .line 208
    .local v1, "_arg0":Lcom/kaolafm/sdk/client/IRadioResult;
    invoke-virtual {p0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->getRadioList(Lcom/kaolafm/sdk/client/IRadioResult;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 214
    .end local v1    # "_arg0":Lcom/kaolafm/sdk/client/IRadioResult;
    :sswitch_14
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    sget-object v0, Lcom/kaolafm/sdk/client/Radio;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaolafm/sdk/client/Radio;

    .line 222
    .local v1, "_arg0":Lcom/kaolafm/sdk/client/Radio;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->switchChannel(Lcom/kaolafm/sdk/client/Radio;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 220
    .end local v1    # "_arg0":Lcom/kaolafm/sdk/client/Radio;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/kaolafm/sdk/client/Radio;
    goto :goto_2

    .line 228
    .end local v1    # "_arg0":Lcom/kaolafm/sdk/client/Radio;
    :sswitch_15
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    sget-object v0, Lcom/kaolafm/sdk/client/SearchData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaolafm/sdk/client/SearchData;

    .line 236
    .local v1, "_arg0":Lcom/kaolafm/sdk/client/SearchData;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playSearchData(Lcom/kaolafm/sdk/client/SearchData;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 234
    .end local v1    # "_arg0":Lcom/kaolafm/sdk/client/SearchData;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/kaolafm/sdk/client/SearchData;
    goto :goto_3

    .line 242
    .end local v1    # "_arg0":Lcom/kaolafm/sdk/client/SearchData;
    :sswitch_16
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 246
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 252
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/ISearchResultV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/ISearchResultV2;

    move-result-object v5

    .local v5, "_arg4":Lcom/kaolafm/sdk/client/ISearchResultV2;
    move-object v0, p0

    .line 253
    invoke-virtual/range {v0 .. v5}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->searchByType(ILjava/lang/String;IILcom/kaolafm/sdk/client/ISearchResultV2;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 259
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Lcom/kaolafm/sdk/client/ISearchResultV2;
    :sswitch_17
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->hasPre()Z

    move-result v8

    .line 261
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v8, :cond_5

    move v1, v7

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 267
    .end local v8    # "_result":Z
    :sswitch_18
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->hasNext()Z

    move-result v8

    .line 269
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v8, :cond_6

    move v1, v7

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 275
    .end local v8    # "_result":Z
    :sswitch_19
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/IPlayResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IPlayResult;

    move-result-object v2

    .line 280
    .local v2, "_arg1":Lcom/kaolafm/sdk/client/IPlayResult;
    invoke-virtual {p0, v1, v2}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playByKeywords(Ljava/lang/String;Lcom/kaolafm/sdk/client/IPlayResult;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
