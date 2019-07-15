.class final Lnluparser/a/d;
.super Ljava/lang/Object;
.source "NluType.java"


# static fields
.field static final a:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lnluparser/a/d$1;

    invoke-direct {v0}, Lnluparser/a/d$1;-><init>()V

    .line 16
    invoke-virtual {v0}, Lnluparser/a/d$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lnluparser/a/d;->a:Ljava/lang/reflect/Type;

    return-void
.end method
