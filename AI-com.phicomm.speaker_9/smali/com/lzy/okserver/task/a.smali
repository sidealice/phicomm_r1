.class public Lcom/lzy/okserver/task/a;
.super Ljava/lang/Object;
.source "PriorityObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/lzy/okserver/task/Priority;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okserver/task/Priority;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/task/Priority;",
            "TE;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 18
    sget-object p1, Lcom/lzy/okserver/task/Priority;->DEFAULT:Lcom/lzy/okserver/task/Priority;

    :cond_0
    iput-object p1, p0, Lcom/lzy/okserver/task/a;->a:Lcom/lzy/okserver/task/Priority;

    .line 19
    iput-object p2, p0, Lcom/lzy/okserver/task/a;->b:Ljava/lang/Object;

    return-void
.end method
