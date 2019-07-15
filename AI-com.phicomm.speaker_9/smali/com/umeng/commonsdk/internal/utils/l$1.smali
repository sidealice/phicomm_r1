.class final Lcom/umeng/commonsdk/internal/utils/l$1;
.super Ljava/lang/Thread;
.source "UMProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/internal/utils/l;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/l$1;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/umeng/commonsdk/internal/utils/l$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 61
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 62
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/l$1;->a:[Ljava/lang/String;

    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/l;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 63
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/l$1;->a:[Ljava/lang/String;

    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/l;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 64
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/l$1;->a:[Ljava/lang/String;

    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/l;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "diskType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/l$1;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; ThremalZone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/l$1;->a:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; GoldFishRc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/l$1;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/l$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/l$1;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/internal/utils/l;->a(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method
