.class Lcom/phicomm/speaker/e/a$1;
.super Ljava/lang/Object;
.source "UniMusicManager.java"

# interfaces
.implements Lcom/unisound/lib/msgcenter/listener/IMusicUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/e/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/phicomm/speaker/e/a$1;->a:Lcom/phicomm/speaker/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicUpdate(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V
    .locals 3

    const-string v0, "UniMusicManager"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicUpdate s = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  musicInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/e/a$1;->a:Lcom/phicomm/speaker/e/a;

    invoke-static {v0, p1, p2}, Lcom/phicomm/speaker/e/a;->a(Lcom/phicomm/speaker/e/a;Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V

    return-void
.end method
