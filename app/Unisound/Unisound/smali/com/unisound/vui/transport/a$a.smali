.class public final Lcom/unisound/vui/transport/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/transport/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/transport/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;


# instance fields
.field final b:Lcom/unisound/vui/transport/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\\W\"type\"\\s*:\\s*(-?\\d+)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/transport/a$a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/transport/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "typeMapping"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/unisound/vui/transport/a$a;->b:Lcom/unisound/vui/transport/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 2

    sget-object v0, Lcom/unisound/vui/transport/a$a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/transport/a$a;->b:Lcom/unisound/vui/transport/c;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unisound/vui/transport/c;->a(Ljava/lang/Integer;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
