.class public Lcom/phicomm/speaker/player/swig/Shairport;
.super Ljava/lang/Object;
.source "Shairport.java"

# interfaces
.implements Lcom/phicomm/speaker/player/swig/ShairportConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_airplay_hostname(Ljava/lang/String;)I
    .locals 1
    .param p0, "apname"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->get_airplay_hostname(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static get_metadata(Lcom/phicomm/speaker/player/swig/MetaData_t;)I
    .locals 2
    .param p0, "MetaData"    # Lcom/phicomm/speaker/player/swig/MetaData_t;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/phicomm/speaker/player/swig/MetaData_t;->getCPtr(Lcom/phicomm/speaker/player/swig/MetaData_t;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->get_metadata(JLcom/phicomm/speaker/player/swig/MetaData_t;)I

    move-result v0

    return v0
.end method

.method public static setCallbackObject(Lcom/phicomm/speaker/player/swig/Callback;)V
    .locals 2
    .param p0, "callback"    # Lcom/phicomm/speaker/player/swig/Callback;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/phicomm/speaker/player/swig/Callback;->getCPtr(Lcom/phicomm/speaker/player/swig/Callback;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->setCallbackObject(JLcom/phicomm/speaker/player/swig/Callback;)V

    .line 42
    return-void
.end method

.method public static set_airplay_hostname(Ljava/lang/String;)I
    .locals 1
    .param p0, "apname"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->set_airplay_hostname(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static set_airplay_hwAddr(Ljava/lang/String;)I
    .locals 1
    .param p0, "hwAddrString"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->set_airplay_hwAddr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static set_airplay_port(Ljava/lang/String;)I
    .locals 1
    .param p0, "port"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->set_airplay_port(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static start_airplay()I
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->start_airplay()I

    move-result v0

    return v0
.end method

.method public static stop_airplay()I
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->stop_airplay()I

    move-result v0

    return v0
.end method
