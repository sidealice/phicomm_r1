.class public Lcn/yunzhisheng/asr/c;
.super Lcn/yunzhisheng/asr/b;


# instance fields
.field final synthetic d:Lcn/yunzhisheng/asr/a;


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/a;I)V
    .locals 1

    iput-object p1, p0, Lcn/yunzhisheng/asr/c;->d:Lcn/yunzhisheng/asr/a;

    add-int/lit16 v0, p2, 0x4e20

    invoke-direct {p0, p1, v0}, Lcn/yunzhisheng/asr/b;-><init>(Lcn/yunzhisheng/asr/a;I)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    return-void
.end method
