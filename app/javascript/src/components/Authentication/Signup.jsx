import React, { useState } from "react";

import SignupForm from "components/Authentication/Form/Signup";
import authApi from "apis/auth";

const Signup = ({ history }) => {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [passwordConfirmation, setPasswordConfirmation] = useState("");
  const [loading, setLoading] = useState(false);

  const handleSubmit = async event => {
    event.preventDefault();
    setLoading(true);
    try {
      await authApi.signup({
        name,
        email,
        password,
        password_confirmation: passwordConfirmation,
      });
      setLoading(false);
      history.push("/");
    } catch (error) {
      logger.error(error);
      setLoading(false);
    }
  };
  return (
    <SignupForm
      setName={setName}
      setEmail={setEmail}
      setPassword={setPassword}
      setPasswordConfirmation={setPasswordConfirmation}
      loading={loading}
      handleSubmit={handleSubmit}
    />
  );
};

export default Signup;
