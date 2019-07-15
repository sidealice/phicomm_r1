.class public interface abstract Lcom/unisound/vui/handler/session/music/network/MusicApi;
.super Ljava/lang/Object;
.source "MusicApi.java"


# virtual methods
.method public abstract getAudio(Lcom/unisound/ant/device/netmodule/request/RequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/unisound/ant/device/netmodule/request/RequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/ant/device/netmodule/request/RequestBody",
            "<",
            "Lcom/unisound/vui/handler/session/music/network/body/AudioBody;",
            ">;)",
            "Lretrofit2/Call",
            "<",
            "Lcom/unisound/ant/device/bean/AudioListResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "appService"
    .end annotation
.end method

.method public abstract getCurrentAudioList(Lcom/unisound/ant/device/bean/RequestInfo;)Lretrofit2/Call;
    .param p1    # Lcom/unisound/ant/device/bean/RequestInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/ant/device/bean/RequestInfo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/unisound/ant/device/bean/AudioListResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "audio/getAudioCurrentList"
    .end annotation
.end method

.method public abstract getCurrentMusicList(Lcom/unisound/ant/device/bean/RequestInfo;)Lretrofit2/Call;
    .param p1    # Lcom/unisound/ant/device/bean/RequestInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/ant/device/bean/RequestInfo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/unisound/ant/device/bean/CurrentMusicList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        hasBody = true
        method = "POST"
        path = "music/getCurrentList"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept:  application/json"
        }
    .end annotation
.end method
