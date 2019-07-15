.class public Lcom/phicomm/speaker/player/dlna/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;
    }
.end annotation


# static fields
.field private static currentVolumePercent:I

.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

.field private static m_fSysNetowrkLastSpeed:F

.field private static m_lSysNetworkSpeedLastTs:J

.field private static m_lSystNetworkLastBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 23
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->currentVolumePercent:I

    .line 214
    sput-wide v2, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->m_lSysNetworkSpeedLastTs:J

    .line 215
    sput-wide v2, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->m_lSystNetworkLastBytes:J

    .line 216
    const/4 v0, 0x0

    sput v0, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->m_fSysNetowrkLastSpeed:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method public static checkNetworkState(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, "netstate":Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 45
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 47
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 49
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    .line 50
    const/4 v3, 0x1

    .line 56
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    return v3

    .line 48
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getCurrentVolume(Landroid/content/Context;)I
    .locals 6
    .param p0, "mc"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    .line 124
    sget v3, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->currentVolumePercent:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 125
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 126
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 127
    .local v2, "maxvolume":I
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 128
    .local v1, "currentvolume":I
    sget-object v3, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentVolume maxvolume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "currentvolume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->d(Ljava/lang/Object;)V

    .line 129
    mul-int/lit8 v3, v1, 0x64

    div-int/2addr v3, v2

    sput v3, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->currentVolumePercent:I

    .line 131
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "currentvolume":I
    .end local v2    # "maxvolume":I
    :cond_0
    sget v3, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->currentVolumePercent:I

    return v3
.end method

.method public static getFitSize(Landroid/content/Context;Landroid/media/MediaPlayer;)Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v8

    .line 162
    .local v8, "videoWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v7

    .line 163
    .local v7, "videoHeight":I
    int-to-double v12, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v12, v14

    int-to-double v14, v7

    div-double v2, v12, v14

    .line 165
    .local v2, "fit1":D
    invoke-static/range {p0 .. p0}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v10

    .line 166
    .local v10, "width2":I
    invoke-static/range {p0 .. p0}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v6

    .line 167
    .local v6, "height2":I
    int-to-double v12, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v12, v14

    int-to-double v14, v6

    div-double v4, v12, v14

    .line 169
    .local v4, "fit2":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 170
    .local v0, "fit":D
    cmpl-double v11, v2, v4

    if-lez v11, :cond_0

    .line 171
    int-to-double v12, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v12, v14

    int-to-double v14, v8

    div-double v0, v12, v14

    .line 176
    :goto_0
    new-instance v9, Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;

    invoke-direct {v9}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;-><init>()V

    .line 177
    .local v9, "viewSize":Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;
    int-to-double v12, v8

    mul-double/2addr v12, v0

    double-to-int v11, v12

    iput v11, v9, Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;->width:I

    .line 178
    int-to-double v12, v7

    mul-double/2addr v12, v0

    double-to-int v11, v12

    iput v11, v9, Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;->height:I

    .line 180
    return-object v9

    .line 173
    .end local v9    # "viewSize":Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;
    :cond_0
    int-to-double v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v12, v14

    int-to-double v14, v7

    div-double v0, v12, v14

    goto :goto_0
.end method

.method public static getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "mc"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string v3, "00:00:00:00:00:00"

    .line 61
    .local v3, "defmac":Ljava/lang/String;
    const/4 v6, 0x0

    .line 62
    .local v6, "input":Ljava/io/InputStream;
    invoke-static {p0}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, "wifimac":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 64
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 91
    .end local v10    # "wifimac":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 69
    .restart local v10    # "wifimac":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "busybox"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "ifconfig"

    aput-object v13, v11, v12

    invoke-direct {v2, v11}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 70
    .local v2, "builder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 71
    .local v7, "process":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 74
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 75
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v1, "buffer":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_2

    .line 77
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    .end local v0    # "b":[B
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "builder":Ljava/lang/ProcessBuilder;
    .end local v7    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v4

    .line 89
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    move-object v10, v3

    .line 91
    goto :goto_0

    .line 79
    .restart local v0    # "b":[B
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "builder":Ljava/lang/ProcessBuilder;
    .restart local v7    # "process":Ljava/lang/Process;
    :cond_2
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "value":Ljava/lang/String;
    const-string v8, "HWaddr "

    .line 81
    .local v8, "systemFlag":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 83
    .local v5, "index":I
    if-lez v5, :cond_1

    .line 84
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 86
    const/4 v11, 0x0

    const/16 v12, 0x11

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2
.end method

.method public static getMobileState(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 202
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 203
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 204
    .local v3, "wifistate":Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v5, :cond_0

    .line 210
    :goto_0
    return v4

    .line 208
    :cond_0
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 209
    .local v1, "mobileState":Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v1, :cond_1

    .local v2, "ret":Z
    :goto_1
    move v4, v2

    .line 210
    goto :goto_0

    .end local v2    # "ret":Z
    :cond_1
    move v2, v4

    .line 209
    goto :goto_1
.end method

.method public static getRootFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 156
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 157
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    return v2
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 150
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 151
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    return v2
.end method

.method public static getSysNetworkDownloadSpeed()F
    .locals 10

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 220
    .local v4, "nowMS":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    .line 222
    .local v2, "nowBytes":J
    sget-wide v8, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->m_lSysNetworkSpeedLastTs:J

    sub-long v6, v4, v8

    .line 223
    .local v6, "timeinterval":J
    sget-wide v8, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->m_lSystNetworkLastBytes:J

    sub-long v0, v2, v8

    .line 225
    .local v0, "bytes":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    long-to-float v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float/2addr v8, v9

    sput v8, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->m_fSysNetowrkLastSpeed:F

    .line 227
    :cond_0
    sput-wide v4, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->m_lSysNetworkSpeedLastTs:J

    .line 228
    sput-wide v2, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->m_lSystNetworkLastBytes:J

    .line 230
    sget v8, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->m_fSysNetowrkLastSpeed:F

    return v8
.end method

.method public static getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mc"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 96
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 97
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getWifiState(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 189
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 190
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 191
    .local v3, "wifistate":Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v5, :cond_0

    .line 197
    :goto_0
    return v4

    .line 195
    :cond_0
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 196
    .local v1, "mobileState":Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v1, :cond_1

    .local v2, "ret":Z
    :goto_1
    move v4, v2

    .line 197
    goto :goto_0

    .end local v2    # "ret":Z
    :cond_1
    move v2, v4

    .line 196
    goto :goto_1
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static openWifiBrocast(Landroid/content/Context;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 102
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v2, "MediaRender"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    .line 103
    .local v0, "multicastLock":Landroid/net/wifi/WifiManager$MulticastLock;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 106
    :cond_0
    return-object v0
.end method

.method public static setCurrentVolume(ILandroid/content/Context;)V
    .locals 5
    .param p0, "percent"    # I
    .param p1, "mc"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    .line 110
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 111
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 116
    .local v1, "maxvolume":I
    mul-int v2, v1, p0

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x5

    invoke-virtual {v0, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 119
    sput p0, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->currentVolumePercent:I

    .line 120
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 121
    return-void
.end method

.method public static setVolumeMute(Landroid/content/Context;)V
    .locals 3
    .param p0, "mc"    # Landroid/content/Context;

    .prologue
    .line 135
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 136
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 137
    return-void
.end method

.method public static setVolumeUnmute(Landroid/content/Context;)V
    .locals 3
    .param p0, "mc"    # Landroid/content/Context;

    .prologue
    .line 140
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 141
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 142
    return-void
.end method

.method public static showToask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    return-void
.end method
