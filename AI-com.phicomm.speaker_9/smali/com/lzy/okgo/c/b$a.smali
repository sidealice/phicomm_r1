.class Lcom/lzy/okgo/c/b$a;
.super Ljava/lang/Object;
.source "StringConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/lzy/okgo/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/lzy/okgo/c/b;

    invoke-direct {v0}, Lcom/lzy/okgo/c/b;-><init>()V

    sput-object v0, Lcom/lzy/okgo/c/b$a;->a:Lcom/lzy/okgo/c/b;

    return-void
.end method

.method static synthetic a()Lcom/lzy/okgo/c/b;
    .locals 1

    .line 20
    sget-object v0, Lcom/lzy/okgo/c/b$a;->a:Lcom/lzy/okgo/c/b;

    return-object v0
.end method
