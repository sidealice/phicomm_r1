.class public Lnluparser/scheme/APPIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# static fields
.field public static final FUNC_AUDIO_CAPTURE:Ljava/lang/String; = "FUNC_AUDIO_CAPTURE"

.field public static final FUNC_IMAGE_CAPTURE:Ljava/lang/String; = "FUNC_IMAGE_CAPTURE"

.field public static final FUNC_IMAGE_VIEW:Ljava/lang/String; = "FUNC_IMAGE_VIEW"

.field public static final FUNC_MUSIC_PLAY:Ljava/lang/String; = "FUNC_MUSIC_PLAY"

.field public static final FUNC_OPEN_CALENDAR:Ljava/lang/String; = "FUNC_OPEN_CALENDAR"

.field public static final FUNC_OPEN_CONTACT:Ljava/lang/String; = "FUNC_OPEN_CONTACT"

.field public static final FUNC_OPEN_MAIL:Ljava/lang/String; = "FUNC_OPEN_MAIL"

.field public static final FUNC_OPEN_MAP:Ljava/lang/String; = "FUNC_OPEN_MAP"

.field public static final FUNC_OPEN_RADIO:Ljava/lang/String; = "FUNC_OPEN_RADIO"

.field public static final FUNC_OPEN_WEB:Ljava/lang/String; = "FUNC_OPEN_WEB"

.field public static final FUNC_SEARCH:Ljava/lang/String; = "FUNC_SEARCH"

.field public static final FUNC_SETTING:Ljava/lang/String; = "FUNC_SETTING"

.field public static final FUNC_VIDEO_CAPTURE:Ljava/lang/String; = "FUNC_VIDEO_CAPTURE"


# instance fields
.field function:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "function"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "function"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "url"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFunction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/APPIntent;->function:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/APPIntent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/APPIntent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/APPIntent;->function:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/APPIntent;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/APPIntent;->url:Ljava/lang/String;

    return-void
.end method
