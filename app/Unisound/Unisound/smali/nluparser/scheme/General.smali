.class public Lnluparser/scheme/General;
.super Ljava/lang/Object;


# instance fields
.field audio:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "audio"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audio"
    .end annotation
.end field

.field code:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "code"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field emoji:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "emoji"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emoji"
    .end annotation
.end field

.field imgAlt:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "imgAlt"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgAlt"
    .end annotation
.end field

.field imgUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "imgUrl"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgUrl"
    .end annotation
.end field

.field mood:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mood"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mood"
    .end annotation
.end field

.field speaker:Lnluparser/scheme/Speaker;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "speaker"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speaker"
    .end annotation
.end field

.field style:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "style"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style"
    .end annotation
.end field

.field text:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "text"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field textTts:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "textTts"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "textTts"
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
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

.field urlAlt:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "urlAlt"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urlAlt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudio()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->audio:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEmoji()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->emoji:Ljava/lang/String;

    return-object v0
.end method

.method public getImgAlt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->imgAlt:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMood()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->mood:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeaker()Lnluparser/scheme/Speaker;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->speaker:Lnluparser/scheme/Speaker;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTts()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->textTts:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlAlt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/General;->urlAlt:Ljava/lang/String;

    return-object v0
.end method

.method public setAudio(Ljava/lang/String;)V
    .locals 0
    .param p1, "audio"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->audio:Ljava/lang/String;

    return-void
.end method

.method public setEmoji(Ljava/lang/String;)V
    .locals 0
    .param p1, "emoji"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->emoji:Ljava/lang/String;

    return-void
.end method

.method public setImgAlt(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgAlt"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->imgAlt:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setMood(Ljava/lang/String;)V
    .locals 0
    .param p1, "mood"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->mood:Ljava/lang/String;

    return-void
.end method

.method public setSpeaker(Lnluparser/scheme/Speaker;)V
    .locals 0
    .param p1, "speaker"    # Lnluparser/scheme/Speaker;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->speaker:Lnluparser/scheme/Speaker;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->style:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->text:Ljava/lang/String;

    return-void
.end method

.method public setTextTts(Ljava/lang/String;)V
    .locals 0
    .param p1, "textTts"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->textTts:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrlAlt(Ljava/lang/String;)V
    .locals 0
    .param p1, "urlAlt"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/General;->urlAlt:Ljava/lang/String;

    return-void
.end method
