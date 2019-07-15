.class public Lcom/phicomm/speaker/player/swig/ShairportJNI;
.super Ljava/lang/Object;
.source "ShairportJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->swig_module_init()V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native Callback_airplay_notify_cb(JLcom/phicomm/speaker/player/swig/Callback;III)I
.end method

.method public static final native Callback_airplay_notify_cbSwigExplicitCallback(JLcom/phicomm/speaker/player/swig/Callback;III)I
.end method

.method public static final native Callback_change_ownership(Lcom/phicomm/speaker/player/swig/Callback;JZ)V
.end method

.method public static final native Callback_director_connect(Lcom/phicomm/speaker/player/swig/Callback;JZZ)V
.end method

.method public static final native MEDIA_BUFFERING_UPDATE_get()I
.end method

.method public static final native MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK_get()I
.end method

.method public static final native MEDIA_ERROR_SERVER_DIED_get()I
.end method

.method public static final native MEDIA_ERROR_UNKNOWN_get()I
.end method

.method public static final native MEDIA_ERROR_get()I
.end method

.method public static final native MEDIA_INFO_BUFFERING_END_get()I
.end method

.method public static final native MEDIA_INFO_BUFFERING_START_get()I
.end method

.method public static final native MEDIA_INFO_CLIENT_CONNECTED_get()I
.end method

.method public static final native MEDIA_INFO_CLIENT_DISCONNECTED_get()I
.end method

.method public static final native MEDIA_INFO_METADATA_UPDATE_get()I
.end method

.method public static final native MEDIA_INFO_NETWORK_BANDWIDTH_get()I
.end method

.method public static final native MEDIA_INFO_UNKNOWN_get()I
.end method

.method public static final native MEDIA_INFO_VOLUME_CONFIG_get()I
.end method

.method public static final native MEDIA_INFO_get()I
.end method

.method public static final native MEDIA_NOP_get()I
.end method

.method public static final native MEDIA_PAUSED_get()I
.end method

.method public static final native MEDIA_PLAYBACK_COMPLETE_get()I
.end method

.method public static final native MEDIA_PREPARED_get()I
.end method

.method public static final native MEDIA_STARTED_get()I
.end method

.method public static final native MEDIA_STOPPED_get()I
.end method

.method public static final native META_MAX_LEN_get()I
.end method

.method public static final native MetaData_t_album_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;
.end method

.method public static final native MetaData_t_album_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V
.end method

.method public static final native MetaData_t_artist_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;
.end method

.method public static final native MetaData_t_artist_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V
.end method

.method public static final native MetaData_t_artwork_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;
.end method

.method public static final native MetaData_t_artwork_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V
.end method

.method public static final native MetaData_t_comment_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;
.end method

.method public static final native MetaData_t_comment_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V
.end method

.method public static final native MetaData_t_genre_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;
.end method

.method public static final native MetaData_t_genre_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V
.end method

.method public static final native MetaData_t_title_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;
.end method

.method public static final native MetaData_t_title_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V
.end method

.method public static SwigDirector_Callback_airplay_notify_cb(Lcom/phicomm/speaker/player/swig/Callback;III)I
    .locals 1
    .param p0, "jself"    # Lcom/phicomm/speaker/player/swig/Callback;
    .param p1, "msg"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/phicomm/speaker/player/swig/Callback;->airplay_notify_cb(III)I

    move-result v0

    return v0
.end method

.method public static final native delete_Callback(J)V
.end method

.method public static final native delete_MetaData_t(J)V
.end method

.method public static final native get_airplay_hostname(Ljava/lang/String;)I
.end method

.method public static final native get_metadata(JLcom/phicomm/speaker/player/swig/MetaData_t;)I
.end method

.method public static final native new_Callback()J
.end method

.method public static final native new_MetaData_t()J
.end method

.method public static final native setCallbackObject(JLcom/phicomm/speaker/player/swig/Callback;)V
.end method

.method public static final native set_airplay_hostname(Ljava/lang/String;)I
.end method

.method public static final native set_airplay_hwAddr(Ljava/lang/String;)I
.end method

.method public static final native set_airplay_port(Ljava/lang/String;)I
.end method

.method public static final native start_airplay()I
.end method

.method public static final native stop_airplay()I
.end method

.method private static final native swig_module_init()V
.end method
