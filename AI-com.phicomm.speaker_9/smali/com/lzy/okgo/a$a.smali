.class Lcom/lzy/okgo/a$a;
.super Ljava/lang/Object;
.source "OkGo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/lzy/okgo/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/lzy/okgo/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lzy/okgo/a;-><init>(Lcom/lzy/okgo/a$1;)V

    sput-object v0, Lcom/lzy/okgo/a$a;->a:Lcom/lzy/okgo/a;

    return-void
.end method

.method static synthetic a()Lcom/lzy/okgo/a;
    .locals 1

    .line 72
    sget-object v0, Lcom/lzy/okgo/a$a;->a:Lcom/lzy/okgo/a;

    return-object v0
.end method
