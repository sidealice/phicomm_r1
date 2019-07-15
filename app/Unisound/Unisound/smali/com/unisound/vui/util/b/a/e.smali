.class public Lcom/unisound/vui/util/b/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/util/b/a/e$a;,
        Lcom/unisound/vui/util/b/a/e$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unisound/vui/util/b/a/e$b;

    invoke-direct {v0}, Lcom/unisound/vui/util/b/a/e$b;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/b/a/e;->a:Ljava/util/Iterator;

    return-void
.end method
