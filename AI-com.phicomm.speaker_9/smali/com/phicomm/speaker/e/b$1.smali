.class Lcom/phicomm/speaker/e/b$1;
.super Ljava/lang/Object;
.source "UniSelfDefineManager.java"

# interfaces
.implements Lcom/unisound/lib/self/listener/ISelfContractCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/e/b;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/b;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/unisound/lib/self/bean/SelfContractBean;)V
    .locals 3

    const-string v0, "UniSelfDefineManager"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallBack selfContractBean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 82
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getContent()Lcom/unisound/lib/self/bean/SelfContractBean$Content;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkDeviceStateManager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_f

    .line 89
    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getCurrentState()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 90
    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getCurrentState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "music"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    new-instance v0, Lcom/phicomm/speaker/e/b/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/e/b/j;-><init>(I)V

    invoke-static {p1, v0}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getCurrentState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    new-instance v0, Lcom/phicomm/speaker/e/b/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/e/b/j;-><init>(I)V

    invoke-static {p1, v0}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 94
    :cond_2
    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getCurrentState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 95
    iget-object p1, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    new-instance v0, Lcom/phicomm/speaker/e/b/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/e/b/j;-><init>(I)V

    invoke-static {p1, v0}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modifyDormantLightStatus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    new-instance v1, Lcom/phicomm/speaker/a/ac;

    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getStatus()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/a/ac;-><init>(I)V

    invoke-static {v0, v1}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 102
    :cond_4
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getLightingStatusManager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_5

    .line 104
    iget-object p1, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    new-instance v0, Lcom/phicomm/speaker/a/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/a/r;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;Ljava/lang/Object;)V

    return-void

    .line 107
    :cond_5
    iget-object p1, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    new-instance v1, Lcom/phicomm/speaker/a/r;

    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getIsLighting()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/a/r;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;Ljava/lang/Object;)V

    const-string p1, "UniSelfDefineManager"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLighting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getIsLighting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_6
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modifyTtsPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/i;->a()V

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    new-instance v1, Lcom/phicomm/speaker/a/j;

    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getStatus()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/a/j;-><init>(I)V

    invoke-static {v0, v1}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 114
    :cond_7
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modifyWakeUpWord"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 117
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getStatus()I

    move-result p1

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/p;->c(I)V

    goto/16 :goto_0

    .line 118
    :cond_8
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDeviceInfoManager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p1, "\u83b7\u53d6\u5524\u9192\u8bcd\u56de\u8c03"

    const/4 v1, 0x0

    .line 119
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_9

    const-string p1, "mqtt content\u4e0d\u4e3a\u7a7a"

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    const-class p1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/yanry/i;->a(Lcom/unisound/lib/self/bean/SelfContractBean$Content;)V

    goto/16 :goto_0

    :cond_9
    const-string p1, "mqtt content is null!"

    .line 125
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 127
    :cond_a
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auditionTtsSpeaker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 128
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/ad;

    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getStatus()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/a/ad;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 129
    :cond_b
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modifyDormantStatus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v0, :cond_f

    .line 131
    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getCurrentDormantStatus()I

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    invoke-static {v0}, Lcom/phicomm/speaker/e/b;->b(Lcom/phicomm/speaker/e/b;)Lcom/phicomm/speaker/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    invoke-static {v1}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/e/a/a;->b(Ljava/lang/String;I)V

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/m;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/a/m;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 135
    :cond_c
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDormantStatus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v0, :cond_f

    .line 137
    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getCurrentDormantStatus()I

    move-result p1

    .line 138
    iget-object v0, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    invoke-static {v0}, Lcom/phicomm/speaker/e/b;->b(Lcom/phicomm/speaker/e/b;)Lcom/phicomm/speaker/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    invoke-static {v1}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/e/a/a;->b(Ljava/lang/String;I)V

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/n;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/a/n;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_d
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modifyAmbientLightStatus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v0, :cond_f

    .line 143
    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getCurrentAmbientLightStatus()I

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    invoke-static {v0}, Lcom/phicomm/speaker/e/b;->b(Lcom/phicomm/speaker/e/b;)Lcom/phicomm/speaker/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    invoke-static {v1}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/e/a/a;->a(Ljava/lang/String;I)V

    .line 145
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/b;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/a/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_e
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getAmbientLightStatus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    if-eqz v0, :cond_f

    .line 149
    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getCurrentAmbientLightStatus()I

    move-result p1

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    invoke-static {v0}, Lcom/phicomm/speaker/e/b;->b(Lcom/phicomm/speaker/e/b;)Lcom/phicomm/speaker/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/e/b$1;->a:Lcom/phicomm/speaker/e/b;

    invoke-static {v1}, Lcom/phicomm/speaker/e/b;->a(Lcom/phicomm/speaker/e/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/e/a/a;->a(Ljava/lang/String;I)V

    .line 151
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/c;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/a/c;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    :cond_f
    :goto_0
    return-void

    :cond_10
    :goto_1
    return-void
.end method
