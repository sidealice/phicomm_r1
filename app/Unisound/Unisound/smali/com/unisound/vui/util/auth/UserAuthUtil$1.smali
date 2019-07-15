.class Lcom/unisound/vui/util/auth/UserAuthUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/passport/PassportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/auth/UserAuthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/util/auth/UserAuthUtil;


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/auth/UserAuthUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/util/auth/UserAuthUtil;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/auth/UserAuthUtil$1;->this$0:Lcom/unisound/vui/util/auth/UserAuthUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "UserAuthUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(IJ)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "l"    # J

    .prologue
    const-string v0, "UserAuthUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const-string v0, "UserAuthUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/util/auth/UserAuthUtil$1;->this$0:Lcom/unisound/vui/util/auth/UserAuthUtil;

    invoke-static {v0, p2}, Lcom/unisound/vui/util/auth/UserAuthUtil;->access$000(Lcom/unisound/vui/util/auth/UserAuthUtil;Ljava/lang/String;)V

    return-void
.end method
