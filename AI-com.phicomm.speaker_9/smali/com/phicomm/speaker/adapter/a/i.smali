.class public Lcom/phicomm/speaker/adapter/a/i;
.super Lcom/phicomm/speaker/adapter/a/a/c;
.source "SpeakerNote.java"


# instance fields
.field private a:Lnluparser/scheme/NoteIntent;


# direct methods
.method public constructor <init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/a/a/c;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    return-void
.end method


# virtual methods
.method public a()Lnluparser/scheme/NoteIntent;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a/i;->a:Lnluparser/scheme/NoteIntent;

    return-object v0
.end method

.method public a(Lnluparser/scheme/NoteIntent;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a/i;->a:Lnluparser/scheme/NoteIntent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeakerNote{noteIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a/i;->a:Lnluparser/scheme/NoteIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
