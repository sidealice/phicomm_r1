.class Lme/shaohui/advancedluban/a$6;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Lrx/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/shaohui/advancedluban/a;->a(Lme/shaohui/advancedluban/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/b<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lme/shaohui/advancedluban/e;

.field final synthetic b:Lme/shaohui/advancedluban/a;


# direct methods
.method constructor <init>(Lme/shaohui/advancedluban/a;Lme/shaohui/advancedluban/e;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lme/shaohui/advancedluban/a$6;->b:Lme/shaohui/advancedluban/a;

    iput-object p2, p0, Lme/shaohui/advancedluban/a$6;->a:Lme/shaohui/advancedluban/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lme/shaohui/advancedluban/a$6;->a:Lme/shaohui/advancedluban/e;

    invoke-interface {p1}, Lme/shaohui/advancedluban/e;->onStart()V

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lme/shaohui/advancedluban/a$6;->a(Ljava/lang/Long;)V

    return-void
.end method
