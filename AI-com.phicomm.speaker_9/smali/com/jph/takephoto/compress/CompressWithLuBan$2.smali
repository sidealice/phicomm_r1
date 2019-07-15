.class Lcom/jph/takephoto/compress/CompressWithLuBan$2;
.super Ljava/lang/Object;
.source "CompressWithLuBan.java"

# interfaces
.implements Lme/shaohui/advancedluban/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jph/takephoto/compress/CompressWithLuBan;->compressMulti()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jph/takephoto/compress/CompressWithLuBan;


# direct methods
.method constructor <init>(Lcom/jph/takephoto/compress/CompressWithLuBan;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan$2;->this$0:Lcom/jph/takephoto/compress/CompressWithLuBan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan$2;->this$0:Lcom/jph/takephoto/compress/CompressWithLuBan;

    invoke-static {v0}, Lcom/jph/takephoto/compress/CompressWithLuBan;->access$100(Lcom/jph/takephoto/compress/CompressWithLuBan;)Lcom/jph/takephoto/compress/CompressImage$CompressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressWithLuBan$2;->this$0:Lcom/jph/takephoto/compress/CompressWithLuBan;

    invoke-static {v1}, Lcom/jph/takephoto/compress/CompressWithLuBan;->access$000(Lcom/jph/takephoto/compress/CompressWithLuBan;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is compress failures"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/jph/takephoto/compress/CompressImage$CompressListener;->onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressWithLuBan$2;->this$0:Lcom/jph/takephoto/compress/CompressWithLuBan;

    invoke-static {v0, p1}, Lcom/jph/takephoto/compress/CompressWithLuBan;->access$200(Lcom/jph/takephoto/compress/CompressWithLuBan;Ljava/util/List;)V

    return-void
.end method
