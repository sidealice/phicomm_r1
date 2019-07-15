.class La/a/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:La/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a;-><init>(La/a/a/a$1;)V

    sput-object v0, La/a/a/a$a;->a:La/a/a/a;

    return-void
.end method
