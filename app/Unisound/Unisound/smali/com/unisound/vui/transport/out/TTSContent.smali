.class public Lcom/unisound/vui/transport/out/TTSContent;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private playContent:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "play_text"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "playContent"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/transport/out/TTSContent;->playContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPlayContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/transport/out/TTSContent;->playContent:Ljava/lang/String;

    return-object v0
.end method

.method public setPlayContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "playContent"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/transport/out/TTSContent;->playContent:Ljava/lang/String;

    return-void
.end method
